import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC3clkGQlcL41JMXKT6SCsAQEaMntYw5ig",
            authDomain: "disp-moviles-pp3.firebaseapp.com",
            projectId: "disp-moviles-pp3",
            storageBucket: "disp-moviles-pp3.firebasestorage.app",
            messagingSenderId: "494398898826",
            appId: "1:494398898826:web:dd5f4d8161b3809e192373"));
  } else {
    await Firebase.initializeApp();
  }
}
