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
    apiKey: 'AIzaSyATYqyse5ELQzYRx_zMY5DPY9bq55p1WZQ',
    appId: '1:172077341628:web:0edadb31ae056e677b29b9',
    messagingSenderId: '172077341628',
    projectId: 'vvc9ja',
    authDomain: 'vvc9ja.firebaseapp.com',
    storageBucket: 'vvc9ja.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDIvZb0J4WUPHX3hDUCndTByp7JhN9t2CU',
    appId: '1:172077341628:android:4f17ed66d493ca0c7b29b9',
    messagingSenderId: '172077341628',
    projectId: 'vvc9ja',
    storageBucket: 'vvc9ja.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJdC3SY--JY9Cdlq9iYasKKmW7vZmp3og',
    appId: '1:172077341628:ios:c974d90122c63f5c7b29b9',
    messagingSenderId: '172077341628',
    projectId: 'vvc9ja',
    storageBucket: 'vvc9ja.appspot.com',
    iosClientId: '172077341628-tfap8p5384a6otkosf6ldtccca647ai6.apps.googleusercontent.com',
    iosBundleId: 'com.example.videovoiceandchat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJdC3SY--JY9Cdlq9iYasKKmW7vZmp3og',
    appId: '1:172077341628:ios:5dce72ae2d3ef58c7b29b9',
    messagingSenderId: '172077341628',
    projectId: 'vvc9ja',
    storageBucket: 'vvc9ja.appspot.com',
    iosClientId: '172077341628-9tu6mdcq7auvicpqv57c3njvmvc77qe0.apps.googleusercontent.com',
    iosBundleId: 'com.example.videovoiceandchat.RunnerTests',
  );
}
