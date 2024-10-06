import 'package:flutter/material.dart';


class MyDrawerTitle extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;

  const MyDrawerTitle({super.key, required this.icon, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primaryFixed,
          ),
        ),
        leading: Icon(icon,
        color: Theme.of(context).colorScheme.primaryFixed,),
        onTap: onTap,
      ),
    );
  }
}
