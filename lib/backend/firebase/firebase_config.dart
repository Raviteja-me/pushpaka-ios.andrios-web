import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAOgLCSRxdJQgahnpe7fpxJdx1Z0v3WzWU",
            authDomain: "abcde-a83e6.firebaseapp.com",
            projectId: "abcde-a83e6",
            storageBucket: "abcde-a83e6.appspot.com",
            messagingSenderId: "633863605368",
            appId: "1:633863605368:web:66acc7e01d118a94b3f18d",
            measurementId: "G-6BXQ1GWQ17"));
  } else {
    await Firebase.initializeApp();
  }
}
