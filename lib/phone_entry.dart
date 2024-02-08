import 'package:billdivide/gen/assets.gen.dart';
import 'package:billdivide/utils/int_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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

  (DateTime, DateTime)? resendTimer;

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
          resendTimer = (
            DateTime.now(),
            DateTime.now().add(
              const Duration(
                seconds: 10,
              ),
            ),
          );
        });
      }
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  resendOTP() async {
    try {
      var messenger = ScaffoldMessenger.of(context);
      if (emailFormKey.currentState != null &&
          emailFormKey.currentState!.validate()) {
        var isSent = await context.read<AppState>().sendEmailOTP(email!);
        if (isSent) {
          messenger.showSnackBar(
              const SnackBar(content: Text('OTP Resent successfully')));
          setState(() {
            resendTimer = (
              DateTime.now(),
              DateTime.now().add(
                const Duration(
                  seconds: 10,
                ),
              ),
            );
          });
        }
      }
    } finally {}
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
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      children: [
                        Assets.imagesAssist.image(),
                        Positioned.fill(
                          child: LayoutBuilder(
                            builder: (context, constraints) => Align(
                              alignment: const FractionalOffset(0.9, 0.2),
                              child: Text(
                                'Welcome!',
                                style: GoogleFonts.kalam().copyWith(
                                  fontSize: constraints.minHeight.isInfinite
                                      ? 1
                                      : constraints.minHeight / 8,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "BillDivide",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
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
                          "Your ultimate bill splitting companion! Simplify sharing expenses with friends!\n\nEnter your email to get started!",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(),
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
                                  decoration: InputDecoration(
                                    labelText: 'OTP sent to email',
                                    suffix: FilledButton.icon(
                                      style: const ButtonStyle(
                                        visualDensity: VisualDensity.compact,
                                      ),
                                      icon: resendTimer != null
                                          ? ProgressTimer(
                                              startTime: resendTimer!.$1,
                                              endTime: resendTimer!.$2,
                                              onRefresh: () {
                                                setState(() {
                                                  resendTimer = null;
                                                });
                                              })
                                          : const Icon(Icons.send),
                                      onPressed: resendTimer == null
                                          ? resendOTP
                                          : null,
                                      label: const Text('Resend'),
                                    ),
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
          ],
        ),
      ),
    );
  }
}

class ProgressTimer extends StatefulWidget {
  final DateTime startTime;
  final DateTime endTime;
  final VoidCallback onRefresh;

  const ProgressTimer({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.onRefresh,
  });

  @override
  State<ProgressTimer> createState() => _ProgressTimerState();
}

class _ProgressTimerState extends State<ProgressTimer>
    with SingleTickerProviderStateMixin {
  late Ticker ticker;
  @override
  void initState() {
    ticker = createTicker((elapsed) {
      if (mounted) {
        setState(() {});
      }
    })
      ..start();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var total = widget.endTime
        .difference(widget.startTime)
        .inMilliseconds
        .clamp(0, maxInteger);
    var remaining = widget.endTime
        .difference(DateTime.now())
        .inMilliseconds
        .clamp(0, maxInteger);
    if (total > 0 && remaining <= 0) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        widget.onRefresh();
      });
    }
    var iconTheme = IconTheme.of(context);
    return SizedBox(
      height: iconTheme.size,
      width: iconTheme.size,
      child: CircularProgressIndicator(
        value: total > 0 ? remaining / total : null,
      ),
    );
  }

  @override
  void dispose() {
    ticker.dispose();
    super.dispose();
  }
}
