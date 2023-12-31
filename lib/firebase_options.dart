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
    apiKey: 'AIzaSyBcdkfm9C05sC86ArTJZVabido_25G1wtg',
    appId: '1:336946020919:web:33e50ebbaaf49aaae435b2',
    messagingSenderId: '336946020919',
    projectId: 'donutgram-23fc1',
    authDomain: 'donutgram-23fc1.firebaseapp.com',
    storageBucket: 'donutgram-23fc1.appspot.com',
    measurementId: 'G-899WCVKVZQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2na_S1rsDJoPRgKtAwfUkRoirggf9Pio',
    appId: '1:336946020919:android:432a6b4884b143b6e435b2',
    messagingSenderId: '336946020919',
    projectId: 'donutgram-23fc1',
    storageBucket: 'donutgram-23fc1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqpt9QWfQhGhdrbW5Mhmz7W9Owd0DzGZM',
    appId: '1:336946020919:ios:245beb538a898818e435b2',
    messagingSenderId: '336946020919',
    projectId: 'donutgram-23fc1',
    storageBucket: 'donutgram-23fc1.appspot.com',
    iosBundleId: 'com.example.donutgram',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqpt9QWfQhGhdrbW5Mhmz7W9Owd0DzGZM',
    appId: '1:336946020919:ios:798fdbf297333d89e435b2',
    messagingSenderId: '336946020919',
    projectId: 'donutgram-23fc1',
    storageBucket: 'donutgram-23fc1.appspot.com',
    iosBundleId: 'com.example.donutgram.RunnerTests',
  );
}
