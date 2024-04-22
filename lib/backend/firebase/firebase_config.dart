import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDdtWcKAR5w0wr76nEg1Z28mxs3D_SmHiM",
            authDomain: "imakhosi.firebaseapp.com",
            projectId: "imakhosi",
            storageBucket: "imakhosi.appspot.com",
            messagingSenderId: "492334103843",
            appId: "1:492334103843:web:60e98ccf3ad98486e1a096",
            measurementId: "G-5P2TZEQZWT"));
  } else {
    await Firebase.initializeApp();
  }
}
