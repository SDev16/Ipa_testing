import 'package:flutter/material.dart';
import 'package:meal_magik/common/color_extension.dart';
import 'package:meal_magik/common/round_textfield.dart';
import 'package:meal_magik/components/card_button.dart';
import 'package:meal_magik/components/my_button.dart';
import 'package:meal_magik/pages/delivery_progress_page.dart';
import 'package:meal_magik/pages/payment_page.dart';

class MomoPay extends StatefulWidget {
  const MomoPay({super.key});

  @override
  State<MomoPay> createState() => _MomoPayState();
}

class _MomoPayState extends State<MomoPay> {
  final TextEditingController textController = TextEditingController();

  void userTappedPay() {
    // only show dialog of form is valid
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Confirm payment"),
        content: SingleChildScrollView(),
        actions: [
          // cancel
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("No"),
          ),

          // accept
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeliveryProgressPage(),
                ),
              );
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Momo Pay"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: TColor.white,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          //////////////////////////////! Logo
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/img/mtn.png",
                height: 100,
              ),
              Image.asset(
                "assets/img/orange.jpg",
                height: 100,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Enter Mobile No",
            style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 16,
            ),
          ),

          ///
          const SizedBox(
            height: 25,
          ),
          //////////////////////////////! Email textfield
          ///
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: RoundTextfield(
              hintText: "+237",
              controller: textController,
              obscureText: false,
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "OR",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Pay with ",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 16,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 25,
          ),
          CardButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaymentPage();
                }));
              },
              text: "Pay with Cart"),
          const SizedBox(
            height: 25,
          ),
          const Spacer(),
          MyButton(onTap: userTappedPay, text: "Make payments"),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
