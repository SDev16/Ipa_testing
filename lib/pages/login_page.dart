import 'package:flutter/material.dart';
import 'package:meal_magik/authentication/screens/reset_password_view.dart';
import 'package:meal_magik/common/color_extension.dart';
import 'package:meal_magik/common/round_textfield.dart';
import 'package:meal_magik/components/my_button.dart';
import 'package:meal_magik/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  Future<void> login() async {
    // get instance
    final _authService = AuthService();

    // try signin
    try {
      // login loading progress
      showDialog(
          context: context,
          builder: (context) {
            return CircularProgressIndicator();
          });

      await _authService.signInWithEmailPassword(
        emailController.text,
        passwordController.text,
      );
      // pop of the loading screen
      Navigator.of(context).pop();
    }
    // display any error
    catch (e) {
      Navigator.of(context).pop();
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: Theme.of(context).colorScheme.surface,
                title: Text(
                  e.toString(),
                ),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //////////////////////////////! Logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 25,
            ),

            //////////////////////////////! Text message slogan

            Text(
              "Welcome to Meal Magik",
              style: TextStyle(
                  fontSize: 20,
                  color: TColor.secondaryText,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "Login",
              style: TextStyle(
                fontSize: 20,
                color: TColor.secondaryText,
              ),
            ),

            ///
            const SizedBox(
              height: 25,
            ),
            //////////////////////////////! Email textfield
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundTextfield(
                hintText: "Email",
                controller: emailController,
                obscureText: false,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //////////////////////////////! Password textfield
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundTextfield(
                hintText: "Password",
                controller: passwordController,
                obscureText: true,
              ),
            ),
            //////////////////////////////! sign in button
            ///

            ///
            const SizedBox(
              height: 25,
            ),
            MyButton(onTap: login, text: "Sign in"),

            ///
            const SizedBox(
              height: 10,
            ),
            //////////////////////////////! not a member ?
            ///

            ///
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ResetPasswordView();
                    }));
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      color: TColor.primary,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),

            ///
            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member ? ",
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Register now ",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 16,
                      )),
                ),
              ],
            )
          ],
        ),

        ///////////
        //////////////
        //////////////
        ////////////
      ),
    );
  }
}
