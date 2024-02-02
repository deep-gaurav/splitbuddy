import 'package:billdivide/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:billdivide/state/app_state.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({
    super.key,
  });

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController upiIdController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  onSubmit(String value) async {
    if (formKey.currentState?.validate() == true) {
      context.read<AppState>().signup(value, upiIdController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                      Assets.images.assist.image(),
                      Positioned.fill(
                        child: LayoutBuilder(
                          builder: (context, constraints) => Align(
                            alignment: const FractionalOffset(0.95, 0.2),
                            child: Text(
                              'Name, please!',
                              style: GoogleFonts.kalam().copyWith(
                                fontSize: constraints.minHeight.isInfinite
                                    ? 1
                                    : constraints.minHeight / 10,
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
                    "Sign Up",
                    style: Theme.of(context).textTheme.headlineLarge,
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
                        "Looks like you are new here.\n\nTell us your name to get you signed up!",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(),
                      ),
                    ),
                  ),
                  // const Spacer(),
                  const SizedBox(
                    height: 10,
                  ),
                  Form(
                    key: formKey,
                    child: TextFormField(
                      controller: controller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Name cant be empty";
                        } else {
                          return null;
                        }
                      },
                      onFieldSubmitted: onSubmit,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                      ),
                      keyboardType: TextInputType.name,
                      autofocus: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FilledButton.icon(
                    onPressed: () => onSubmit(controller.text),
                    icon: const Icon(Icons.done),
                    label: const Text("Sign Up"),
                    style: ElevatedButton.styleFrom(elevation: 4),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
