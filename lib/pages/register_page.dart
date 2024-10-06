import 'package:flutter/material.dart';
import 'package:meal_magik/common/color_extension.dart';
import 'package:meal_magik/common/round_textfield.dart';
import 'package:meal_magik/components/my_button.dart';
import 'package:meal_magik/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  // register method
  void register() async {
    // fill out authincation here...
    // get auth service
    final _authService = AuthService();

    // check if passwords match
    if (passwordController.text == confirmpasswordController.text) {
      // try creating user
      try {
        // login loading progress
        showDialog(
            context: context,
            builder: (context) {
              return CircularProgressIndicator();
            });
        await _authService.signUpWithEmailPassword(
            emailController.text, passwordController.text);

        Navigator.of(context).pop();
      } catch (e) {
        Navigator.of(context).pop();
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  title: Text(e.toString()),
                ));
                
      }
    }

    //show error if dont match
    else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: Theme.of(context).colorScheme.surface,
                title: const Text("Passwords don't match"),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
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
              "Let's create an account for you ...",
              style: TextStyle(
                fontSize: 18,
                color: TColor.primary,
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
              child: RoundTextfield(hintText: "Email",
                  controller: emailController,
                  obscureText: false,),
            ),
            const SizedBox(
              height: 25,
            ),
            //////////////////////////////! Password textfield
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundTextfield(hintText: "Password",
                  controller: passwordController,
                  obscureText: true,),
            ),

            ///
            const SizedBox(
              height: 25,
            ),
            //////////////////////////////! confirm Password textfield
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundTextfield(hintText: "Confirm Password",
                  controller: confirmpasswordController,
                  obscureText: true,),
            ),
            //////////////////////////////! sign in button
            ///
            const SizedBox(
              height: 25,
            ),
            MyButton(onTap: register, text: "Sign up"),

            ///
            const SizedBox(
              height: 25,
            ),
            //////////////////////////////! not a member ?
            ///
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Login here ",
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
