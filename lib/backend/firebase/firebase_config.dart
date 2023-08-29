import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDCg_xXWD6rY4ViduTKIT-tgTHRuv4zNn4",
            authDomain: "menumalory.firebaseapp.com",
            projectId: "menumalory",
            storageBucket: "menumalory.appspot.com",
            messagingSenderId: "810529287371",
            appId: "1:810529287371:web:cb8b98bac0c793fff03f4e"));
  } else {
    await Firebase.initializeApp();
  }
}
