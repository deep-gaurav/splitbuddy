import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateRequiredScreen extends StatelessWidget {
  const UpdateRequiredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dialog(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Update Required',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Update required to keep using the app. We\'ve added new features and fixed bugs to enhance your experience.\nPlease update to the latest version.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                FilledButton(
                  onPressed: () {
                    const playStoreUrl =
                        'https://play.google.com/store/apps/details?id=app.billdivide';

                    launchUrl(
                      Uri.parse(playStoreUrl),
                    );
                  },
                  child: const Text('Update Now'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
