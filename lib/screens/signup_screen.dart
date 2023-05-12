import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splitbuddy/state/app_state.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({
    super.key,
  });

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController controller = TextEditingController();
  var formKey = GlobalKey<FormState>();

  onSubmit(String value) async {
    if (formKey.currentState?.validate() == true) {
      context.read<AppState>().signup(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 3),
            ),
            child: const Icon(
              Icons.person,
              size: 80,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
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
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: () => onSubmit(controller.text),
            icon: const Icon(Icons.done),
            label: const Text("Signup"),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
