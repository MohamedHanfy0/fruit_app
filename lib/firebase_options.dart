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
    apiKey: 'AIzaSyAjLA7Jn69DQ8sAdqMXmSbh5zczRPE55ls',
    appId: '1:1062065597519:web:6c26f351684c443955ce3a',
    messagingSenderId: '1062065597519',
    projectId: 'fruit-hub-c8496',
    authDomain: 'fruit-hub-c8496.firebaseapp.com',
    storageBucket: 'fruit-hub-c8496.firebasestorage.app',
    measurementId: 'G-3EH2M1RVBL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSOLcm0BlXpMn38uv-hcrcx2sTFjzzr9M',
    appId: '1:1062065597519:android:58165dc8ab5cfb1455ce3a',
    messagingSenderId: '1062065597519',
    projectId: 'fruit-hub-c8496',
    storageBucket: 'fruit-hub-c8496.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD3LbO3ICWpg-FjaoHaStMFGE_PB2KLP-E',
    appId: '1:1062065597519:ios:c67d456ffd317c6355ce3a',
    messagingSenderId: '1062065597519',
    projectId: 'fruit-hub-c8496',
    storageBucket: 'fruit-hub-c8496.firebasestorage.app',
    iosBundleId: 'com.example.fruitApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD3LbO3ICWpg-FjaoHaStMFGE_PB2KLP-E',
    appId: '1:1062065597519:ios:c67d456ffd317c6355ce3a',
    messagingSenderId: '1062065597519',
    projectId: 'fruit-hub-c8496',
    storageBucket: 'fruit-hub-c8496.firebasestorage.app',
    iosBundleId: 'com.example.fruitApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAjLA7Jn69DQ8sAdqMXmSbh5zczRPE55ls',
    appId: '1:1062065597519:web:ff798dbb0f95efcd55ce3a',
    messagingSenderId: '1062065597519',
    projectId: 'fruit-hub-c8496',
    authDomain: 'fruit-hub-c8496.firebaseapp.com',
    storageBucket: 'fruit-hub-c8496.firebasestorage.app',
    measurementId: 'G-XH3TR08PE1',
  );
}
