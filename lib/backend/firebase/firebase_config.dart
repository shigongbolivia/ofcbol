import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCXxabtQ7gjNXfvo29qkGTrDtMTjV9GvK0",
            authDomain: "ofc-bol-8420f.firebaseapp.com",
            projectId: "ofc-bol-8420f",
            storageBucket: "ofc-bol-8420f.firebasestorage.app",
            messagingSenderId: "1065180511995",
            appId: "1:1065180511995:web:3715dd61abbb97befd3a5e",
            measurementId: "G-X6TSNEK76E"));
  } else {
    await Firebase.initializeApp();
  }
}
