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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBCMQasXJIh1LMYo3sKrCKwGcwWVbOfxNo',
    appId: '1:5325013301:web:a6a5f0ef187bda2fe6cc7c',
    messagingSenderId: '5325013301',
    projectId: 'prayer-app-e9bdc',
    authDomain: 'prayer-app-e9bdc.firebaseapp.com',
    storageBucket: 'prayer-app-e9bdc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkKdyQsugDWEkW2mCZtyUcc7mHDZTrgeU',
    appId: '1:5325013301:android:b77f40556fc083dbe6cc7c',
    messagingSenderId: '5325013301',
    projectId: 'prayer-app-e9bdc',
    storageBucket: 'prayer-app-e9bdc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB46N8BEyDyBQvu5Gc6qCBAeICpcDDozmQ',
    appId: '1:5325013301:ios:1d3877bb3acfa16ae6cc7c',
    messagingSenderId: '5325013301',
    projectId: 'prayer-app-e9bdc',
    storageBucket: 'prayer-app-e9bdc.appspot.com',
    iosBundleId: 'com.example.prayerApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB46N8BEyDyBQvu5Gc6qCBAeICpcDDozmQ',
    appId: '1:5325013301:ios:1d3877bb3acfa16ae6cc7c',
    messagingSenderId: '5325013301',
    projectId: 'prayer-app-e9bdc',
    storageBucket: 'prayer-app-e9bdc.appspot.com',
    iosBundleId: 'com.example.prayerApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBCMQasXJIh1LMYo3sKrCKwGcwWVbOfxNo',
    appId: '1:5325013301:web:8f5282968cc4e597e6cc7c',
    messagingSenderId: '5325013301',
    projectId: 'prayer-app-e9bdc',
    authDomain: 'prayer-app-e9bdc.firebaseapp.com',
    storageBucket: 'prayer-app-e9bdc.appspot.com',
  );
}
