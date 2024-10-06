// to check wether the current user is logged in or not

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'package:meal_magik/pages/home_page.dart';
import 'package:meal_magik/services/auth/login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ( context,  snapshot) {
        // user logged in
        if(snapshot.hasData){
          return const HomePage();
        }
        // not logged in 
        else{
          return LoginOrRegister();
        }
      },
    );
  }
}