import 'package:flutter/material.dart';
import 'package:meal_magik/authentication/screens/momo_pay.dart';
import 'package:meal_magik/components/my_button.dart';
import 'package:meal_magik/components/my_cart_tile.dart';
import 'package:meal_magik/models/resturant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(builder: (context, resturant, child) {
      // cart
      final userCart = resturant.cart;

      //Scaffold  UI
      return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            // clear cart btn
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text(
                      "Are you sure you want to cear this cart?",
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      // cancel button
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("No"),
                      ),
                      // yes button
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          resturant.clearCart();
                        },
                        child: const Text("Yes"),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? const Expanded(
                          child: Center(child: Text("Cart is empty...")))
                      : Expanded(
                          child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                // get individual cart item
                                final cartItem = userCart[index];

                                // return cart tile UI
                                return MyCartTile(cartItem: cartItem);
                              }),
                        ),
                ],
              ),
            ),

            // button to check out
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: MyButton(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const MomoPay()));
                  },
                  text: "Checkout"),
            )
          ],
        ),
      );
    });
  }
}
