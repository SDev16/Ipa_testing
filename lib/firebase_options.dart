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
    apiKey: 'AIzaSyDVJZzupjpygJsCyWDxvQsMeKCujqVMCwc',
    appId: '1:206823136889:web:695f4f0d60e9ded6bafea8',
    messagingSenderId: '206823136889',
    projectId: 'mealmagikapp',
    authDomain: 'mealmagikapp.firebaseapp.com',
    storageBucket: 'mealmagikapp.appspot.com',
    measurementId: 'G-3NW1EG3E4X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBw9tqfLyOLjU1Y72-KcPmC0y9I4uQeiiA',
    appId: '1:206823136889:android:f2b06a0234f5790abafea8',
    messagingSenderId: '206823136889',
    projectId: 'mealmagikapp',
    storageBucket: 'mealmagikapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCepTYPseJwSjAsa2aYIIn8d2chruFl6sM',
    appId: '1:206823136889:ios:85127c5bf451d05abafea8',
    messagingSenderId: '206823136889',
    projectId: 'mealmagikapp',
    storageBucket: 'mealmagikapp.appspot.com',
    iosBundleId: 'com.fooddelivery.mealMagik',
  );
}
