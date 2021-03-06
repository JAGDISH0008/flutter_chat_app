import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'screens/auth_screen.dart';
import 'screens/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        backgroundColor: Colors.purple,
        accentColor: Colors.orange,
      ),
      home: StreamBuilder(stream: FirebaseAuth.instance.onAuthStateChanged ,builder: (ctx,userSnapshot){
        if(userSnapshot.hasData){
          return ChatScreen();
        }
        return AuthScreen();
      } ,) ,
    );
  }
}

