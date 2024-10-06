import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomerCare extends StatelessWidget {
  final void Function()? onTap;
  const CustomerCare({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Care"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25,),
              child: Container(
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Theme.of(context).colorScheme.primaryFixed,)
                ),
                
                  
                   child: SizedBox( height: 200,
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("Do you have any worries ? \nWe are always available to help just hit the whatsapp icon bellow and get started  \nThanks for understanding",
                            style: TextStyle(color: Theme.of(context).colorScheme.primaryFixed,
                            
                            fontSize: 18),
                            ),
                         ),
                       ],
                     ),
                   ),
                  
                
              ),
            ),
            GestureDetector(
              onTap: (){
                launchUrl(Uri.parse("https://wa.me/+237693721104"));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Theme.of(context).colorScheme.primaryFixed,)
                ),
                    child: Image.asset(
                      'assets/img/whatsapp.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
