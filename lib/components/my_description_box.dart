import 'package:flutter/material.dart';
import 'package:meal_magik/common/color_extension.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: TColor.white,
    );

    var myPSecondaryTextStyle = TextStyle(
      color: TColor.white,
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 60.0, left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: TColor.white,
        )),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 7.0, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ////////! delivery fee
              ///
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      'XAF 1000',
                      style: myPrimaryTextStyle,
                    ),
                    Text(
                      'Delivery fee',
                      style: myPSecondaryTextStyle,
                    )
                  ],
                ),
              ),
              ////////! delivery time
              ///
              Column(
                children: [
                  Text(
                    '15-30 mins',
                    style: myPrimaryTextStyle,
                  ),
                  Text(
                    'Delivery ftime',
                    style: myPSecondaryTextStyle,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
