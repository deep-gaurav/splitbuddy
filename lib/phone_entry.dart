import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/state/app_state.dart';

class PhoneEntryScreen extends StatefulWidget {
  const PhoneEntryScreen({super.key});

  @override
  State<PhoneEntryScreen> createState() => _PhoneEntryScreenState();
}

class _PhoneEntryScreenState extends State<PhoneEntryScreen> {
  bool otpSent = false;
  String? email;

  final GlobalKey<FormState> emailFormKey = GlobalKey();
  final GlobalKey<FormState> otpFormKey = GlobalKey();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  bool isLoading = false;

  sendOTP(String email) async {
    try {
      setState(() {
        isLoading = true;
      });
      if (emailFormKey.currentState != null &&
          emailFormKey.currentState!.validate()) {
        var isSent = await context.read<AppState>().sendEmailOTP(email);
        setState(() {
          this.email = email;
          otpSent = isSent;
        });
      }
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  verifyOTP(String otp) async {
    try {
      setState(() {
        isLoading = true;
      });
      final ScaffoldMessengerState? messenger =
          ScaffoldMessenger.maybeOf(context);
      if (otpFormKey.currentState != null &&
          otpFormKey.currentState!.validate()) {
        final bool result =
            await context.read<AppState>().verifyEmailOTP(email!, otp);
        if (!result) {
          messenger?.showSnackBar(
              const SnackBar(content: Text("OTP invalid or expired")));
        }
      }
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(
                flex: 3,
              ),
              Text(
                "Bill Divide",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                  ),
                  child: Text(
                    "Simplify sharing expenses with friends! Effortless bill splitting made easy.\n\nEnter your email to get started!",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(),
                  ),
                ),
              ),
              Form(
                key: emailFormKey,
                child: TextFormField(
                  controller: emailController,
                  onFieldSubmitted: sendOTP,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Email is required";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  enabled: !isLoading && !otpSent,
                  textInputAction: TextInputAction.go,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'yourawesomeemail@awesome.com',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              AnimatedSize(
                duration: const Duration(milliseconds: 700),
                child: otpSent
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Form(
                          key: otpFormKey,
                          child: TextFormField(
                            validator: (value) {
                              if (value?.length != 6) {
                                return "OTP not valid";
                              }
                              return null;
                            },
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(6),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            controller: otpController,
                            onFieldSubmitted: verifyOTP,
                            autofocus: true,
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.go,
                            decoration: const InputDecoration(
                              labelText: 'OTP sent to email',
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ),
              const SizedBox(
                height: 10,
              ),
              FilledButton(
                onPressed: isLoading
                    ? null
                    : otpSent
                        ? () => verifyOTP(otpController.text)
                        : () => sendOTP(emailController.text),
                child: isLoading
                    ? const CircularProgressIndicator()
                    : otpSent
                        ? const Text("Verify")
                        : const Text("Get Started"),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
