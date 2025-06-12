import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCswS8a-TQBJNdREHv8la6A9p7tubHT_Y0",
            authDomain: "lullabee-mdb94s.firebaseapp.com",
            projectId: "lullabee-mdb94s",
            storageBucket: "lullabee-mdb94s.firebasestorage.app",
            messagingSenderId: "230861959358",
            appId: "1:230861959358:web:ea702ce3f5f12020fbaeef"));
  } else {
    await Firebase.initializeApp();
  }
}
