import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC3slsHvbozRfwGnojiB_BD1IDmgMYmY8Y",
            authDomain: "acts2-df410.firebaseapp.com",
            projectId: "acts2-df410",
            storageBucket: "acts2-df410.appspot.com",
            messagingSenderId: "800107016897",
            appId: "1:800107016897:web:7bac3dedeae27c35a89a40",
            measurementId: "G-PJYSE6T2HS"));
  } else {
    await Firebase.initializeApp();
  }
}
