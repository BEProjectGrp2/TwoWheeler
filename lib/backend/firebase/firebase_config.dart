import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAXQVvcxtLfQKX54EcBpbwF0cZpN1NqrdQ",
            authDomain: "two-wheeler-ai.firebaseapp.com",
            projectId: "two-wheeler-ai",
            storageBucket: "two-wheeler-ai.appspot.com",
            messagingSenderId: "134089578944",
            appId: "1:134089578944:web:69de242d2ec0e220b3d025",
            measurementId: "G-LPRPCFLY9K"));
  } else {
    await Firebase.initializeApp();
  }
}
