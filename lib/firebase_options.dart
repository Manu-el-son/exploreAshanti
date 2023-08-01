// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
// ignore: depend_on_referenced_packages
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
    apiKey: 'AIzaSyBxTfsQmwH5l33E2ulMFXaY7wcSQfn-Bps',
    appId: '1:1017947221119:web:7eb7c8b673a62bd5e2234a',
    messagingSenderId: '1017947221119',
    projectId: 'explore-3adf0',
    authDomain: 'explore-3adf0.firebaseapp.com',
    storageBucket: 'explore-3adf0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSnQYzkh019tbXn7Gwho3Cwhl4zuR6TSc',
    appId: '1:1017947221119:android:78b37c61dfc2d4f8e2234a',
    messagingSenderId: '1017947221119',
    projectId: 'explore-3adf0',
    storageBucket: 'explore-3adf0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnTPEALUwP7yCIcJDnm3H4l3XvBEjP_Ac',
    appId: '1:1017947221119:ios:0b9a9c361671791ae2234a',
    messagingSenderId: '1017947221119',
    projectId: 'explore-3adf0',
    storageBucket: 'explore-3adf0.appspot.com',
    iosClientId:
        '1017947221119-mj845gf6drgosut21dslte808mnaop9b.apps.googleusercontent.com',
    iosBundleId: 'com.example.explore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCnTPEALUwP7yCIcJDnm3H4l3XvBEjP_Ac',
    appId: '1:1017947221119:ios:4e3c6fb8d314b3e9e2234a',
    messagingSenderId: '1017947221119',
    projectId: 'explore-3adf0',
    storageBucket: 'explore-3adf0.appspot.com',
    iosClientId:
        '1017947221119-ia3j3pjlr67mda2sn640bdf1r7q6cjmi.apps.googleusercontent.com',
    iosBundleId: 'com.example.explore.RunnerTests',
  );
}