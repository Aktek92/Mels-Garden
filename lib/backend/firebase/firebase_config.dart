import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDeDuzj2Zihp419WMl_0aBXrFv6PwEE0mA",
            authDomain: "melsgarden-6454f.firebaseapp.com",
            projectId: "melsgarden-6454f",
            storageBucket: "melsgarden-6454f.appspot.com",
            messagingSenderId: "48010903870",
            appId: "1:48010903870:web:6326c2b940a3fb0e25ac6f",
            measurementId: "G-N5L10EEHG0"));
  } else {
    await Firebase.initializeApp();
  }
}
