// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD_zPSS19pTuvO3OGXzq-CZjdOlg-75KBw',
    appId: '1:149656794462:web:4fbfc0ac972742f9770bcf',
    messagingSenderId: '149656794462',
    projectId: 'todo-f312a',
    authDomain: 'todo-f312a.firebaseapp.com',
    storageBucket: 'todo-f312a.firebasestorage.app',
    measurementId: 'G-ZR00VSRXGM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcT56sdqsO4jfPDvmVT1e-b8LBMxVwmUo',
    appId: '1:149656794462:android:5fa091f9b017ae95770bcf',
    messagingSenderId: '149656794462',
    projectId: 'todo-f312a',
    storageBucket: 'todo-f312a.firebasestorage.app',
  );
}
