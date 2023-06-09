// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members, import_of_legacy_library_into_null_safe
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
    apiKey: 'AIzaSyAnBJwl5ciEiBHGtO8ZL4QXn6_NDLCkS5Q',
    appId: '1:428575471709:web:6d02fe59ce478799b975b4',
    messagingSenderId: '428575471709',
    projectId: 'flamefinder-7c6eb',
    authDomain: 'flamefinder-7c6eb.firebaseapp.com',
    storageBucket: 'flamefinder-7c6eb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyO089fajzllLbfqsg88HarzMPFwpvJzI',
    appId: '1:428575471709:android:6662e050a470b195b975b4',
    messagingSenderId: '428575471709',
    projectId: 'flamefinder-7c6eb',
    storageBucket: 'flamefinder-7c6eb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBoqn867NlVY81lw0K1EHl4u5FP5LKhIj8',
    appId: '1:428575471709:ios:efae9d9c8f805c12b975b4',
    messagingSenderId: '428575471709',
    projectId: 'flamefinder-7c6eb',
    storageBucket: 'flamefinder-7c6eb.appspot.com',
    iosClientId:
        '428575471709-c9sb0qkamm6j7kkh6e30j087dokui0p2.apps.googleusercontent.com',
    iosBundleId: 'com.example.flamefinder',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBoqn867NlVY81lw0K1EHl4u5FP5LKhIj8',
    appId: '1:428575471709:ios:efae9d9c8f805c12b975b4',
    messagingSenderId: '428575471709',
    projectId: 'flamefinder-7c6eb',
    storageBucket: 'flamefinder-7c6eb.appspot.com',
    iosClientId:
        '428575471709-c9sb0qkamm6j7kkh6e30j087dokui0p2.apps.googleusercontent.com',
    iosBundleId: 'com.example.flamefinder',
  );
}
