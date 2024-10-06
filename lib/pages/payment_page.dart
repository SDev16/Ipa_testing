import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:meal_magik/components/my_button.dart';
import 'package:meal_magik/pages/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  // user tap function
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      // only show dialog of form is valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Confirm payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Holder Name: $cardHolderName"),
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("CVV: $cvvCode"),
              ],
            ),
          ),
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Checkout"),
        centerTitle: true,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          // credit card
          CreditCardWidget(
              cardHolderName: cardHolderName,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {}),

          // cedit card form
          CreditCardForm(
            cardHolderName: cardHolderName,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cvvCode: cvvCode,
            onCreditCardModelChange: (data) {
              setState(() {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
              });
            },
            formKey: formKey,
            themeColor: Colors.transparent,
          ),
          const Spacer(),

          MyButton(onTap: userTappedPay, text: "Make payments"),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
