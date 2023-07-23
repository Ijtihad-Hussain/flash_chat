import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: FirebaseOptions(
      apiKey: "AIzaSyBtG9vU3OIfMtqRM7vcCk8qkAq2MPM_BoA", // Your apiKey
      appId: "1:541168406683:android:080a6941caee8319bdb63e", // Your appId
      messagingSenderId: "541168406683", // Your messagingSenderId
      projectId: "flash-chat-92392", // Your projectId
    ),
    );
    runApp(FlashChat());
}

class FlashChat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
