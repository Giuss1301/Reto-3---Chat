import 'package:chat/interfaz/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBu9Sj4gqGuwIKNAfIv0biz58AtE5aR49I",
          authDomain: "chat-ce6c9.firebaseapp.com",
          projectId: "chat-ce6c9",
          storageBucket: "chat-ce6c9.appspot.com",
          messagingSenderId: "864225941997",
          appId: "1:864225941997:web:19367ef032a51268bd6fe4",
          measurementId: "G-VKJH2XG7E3"));

  runApp(const MyApp());
}
