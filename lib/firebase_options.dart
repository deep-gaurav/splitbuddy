// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAlMY4UWjrq2Q0CgsvnaXE1NWoG9FHeB6g',
    appId: '1:42003969608:web:29a98b843ae8df2bfa8a7d',
    messagingSenderId: '42003969608',
    projectId: 'billdivide-app',
    authDomain: 'billdivide-app.firebaseapp.com',
    storageBucket: 'billdivide-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjafBWL-NeEFwd4e-FFMz2AEv-SMP8XEA',
    appId: '1:42003969608:android:8c3959df5b0fe529fa8a7d',
    messagingSenderId: '42003969608',
    projectId: 'billdivide-app',
    storageBucket: 'billdivide-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6zcDxXct0e8qZmRsZRcQtxdCOZ70GeMI',
    appId: '1:42003969608:ios:9b140688f1b5221ffa8a7d',
    messagingSenderId: '42003969608',
    projectId: 'billdivide-app',
    storageBucket: 'billdivide-app.appspot.com',
    iosBundleId: 'app.billdivide',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6zcDxXct0e8qZmRsZRcQtxdCOZ70GeMI',
    appId: '1:42003969608:ios:9b140688f1b5221ffa8a7d',
    messagingSenderId: '42003969608',
    projectId: 'billdivide-app',
    storageBucket: 'billdivide-app.appspot.com',
    iosBundleId: 'app.billdivide',
  );
}
