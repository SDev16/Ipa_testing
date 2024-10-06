import 'package:flutter/material.dart';
import 'package:meal_magik/components/my_button.dart';
import 'package:meal_magik/components/my_drawer_title.dart';
import 'package:meal_magik/pages/customer_care.dart';
import 'package:meal_magik/pages/info_page.dart';
import 'package:meal_magik/pages/settings_page.dart';
import 'package:meal_magik/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Icon(
              Icons.lock_open_rounded,
              size: 70,
              color: Theme.of(context).colorScheme.primaryFixed,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.primaryFixed,
            ),
          ),

//////////////////////////! home list

          MyDrawerTitle(
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
            text: "Home",
          ),
//////////////////////////! setting list
          MyDrawerTitle(
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              },
              text: "Settings"),
          //////////////////////////! about me
          MyDrawerTitle(
              icon: Icons.info,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InfoPage()));
              },
              text: "About Me"),
                        //////////////////////////!Customer Care list
          MyDrawerTitle(
              icon: Icons.contact_support_outlined,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CustomerCare()));
              },
              text: "Customer Care"),
          const Spacer(),
//////////////////////////! logout list
          // MyDrawerTitle(icon: Icons.logout_rounded, onTap: logout, text: "LogOut"),
          MyButton(onTap: logout, text: "LogOut"),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
