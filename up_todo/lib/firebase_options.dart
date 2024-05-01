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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCuixzT3GA_XZZb0aM_5PujKtT4gF4Biak',
    appId: '1:94976653694:web:21c8bed3099233fc441b2f',
    messagingSenderId: '94976653694',
    projectId: 'up-todo-9b477',
    authDomain: 'up-todo-9b477.firebaseapp.com',
    storageBucket: 'up-todo-9b477.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATZ2xID0EkJO4pBIxBkaI62qbzVHeHuMY',
    appId: '1:94976653694:android:f9b92f5edac00f1d441b2f',
    messagingSenderId: '94976653694',
    projectId: 'up-todo-9b477',
    storageBucket: 'up-todo-9b477.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCebQYrdTsY5bScfa2vYIWvWb9-cAZ3YDA',
    appId: '1:94976653694:ios:9d84ad3ec6f0dfbe441b2f',
    messagingSenderId: '94976653694',
    projectId: 'up-todo-9b477',
    storageBucket: 'up-todo-9b477.appspot.com',
    iosBundleId: 'com.example.upTodo',
  );
}