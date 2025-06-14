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
    apiKey: 'AIzaSyBkQ4XTtsjLh28F3wKHfSiPDe9ycbdjDVo',
    appId: '1:748081709292:web:2ce8293086e5dae6f465c9',
    messagingSenderId: '748081709292',
    projectId: 'ureeka-training-final',
    authDomain: 'ureeka-training-final.firebaseapp.com',
    storageBucket: 'ureeka-training-final.firebasestorage.app',
    measurementId: 'G-98FT28S63Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTrt8jCCFVjcXGsADPvul2a-SPuRczMXY',
    appId: '1:748081709292:android:a14f1b183bd3a1d4f465c9',
    messagingSenderId: '748081709292',
    projectId: 'ureeka-training-final',
    storageBucket: 'ureeka-training-final.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCv-q29niTIwYwr-gdS1f0yGfXgmHkOLKc',
    appId: '1:748081709292:ios:78fea89f076e937ef465c9',
    messagingSenderId: '748081709292',
    projectId: 'ureeka-training-final',
    storageBucket: 'ureeka-training-final.firebasestorage.app',
    iosBundleId: 'com.example.ureekaTrainingFinalFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCv-q29niTIwYwr-gdS1f0yGfXgmHkOLKc',
    appId: '1:748081709292:ios:78fea89f076e937ef465c9',
    messagingSenderId: '748081709292',
    projectId: 'ureeka-training-final',
    storageBucket: 'ureeka-training-final.firebasestorage.app',
    iosBundleId: 'com.example.ureekaTrainingFinalFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBkQ4XTtsjLh28F3wKHfSiPDe9ycbdjDVo',
    appId: '1:748081709292:web:8e8dfa9e455d3136f465c9',
    messagingSenderId: '748081709292',
    projectId: 'ureeka-training-final',
    authDomain: 'ureeka-training-final.firebaseapp.com',
    storageBucket: 'ureeka-training-final.firebasestorage.app',
    measurementId: 'G-8E6E6PB89E',
  );

}