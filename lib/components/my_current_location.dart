import 'package:flutter/material.dart';
import 'package:meal_magik/common/color_extension.dart';
import 'package:meal_magik/models/resturant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  final textController = TextEditingController();

  MyCurrentLocation({
    super.key,
  });

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Theme.of(context).colorScheme.surface,
              title: Text("Enter location"),
              content: TextField(
                controller: textController,
                decoration: InputDecoration(hintText: "Enter address..."),
              ),
              actions: [
                ////! cancel btn
                ///
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child: const Text("Cancel"),
                ),

                ///
                // ////! save btn
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    String newAddress = textController.text;
                    context.read<Resturant>().updateDeliveryAddress(newAddress);
                    textController.clear();
                  },
                  child: const Text("Save"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ////////////////////////////////! address
          Text(
            "Deliver now",
            style: TextStyle(
              color: TColor.white,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                ////////////////////////////////! address
                Consumer<Resturant>(
                    builder: (context, resturant, child) =>
                        Text(resturant.deliveryAddress,
                        style: TextStyle(
                          fontSize: 18,
                          color:Theme.of(context).colorScheme.surface,
                        ),
                        )),

                ///
                ///
                // ////////////////////////////////! dropdown menu
                const Icon(Icons.keyboard_arrow_down_rounded,
                    color: Colors.white),
              ],
            ),
          )
        ],
      ),
    );
  }
}
