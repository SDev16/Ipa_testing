import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meal_magik/common/on_boarding/startup_view.dart';
import 'package:meal_magik/firebase_options.dart';
import 'package:meal_magik/models/resturant.dart';
import 'package:meal_magik/themes/theme_provider.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiProvider(
      providers: [
        ////////! theme
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ////////!  resturant
        ChangeNotifierProvider(create: (context) => Resturant()),
      ],
      child: const MyApp(),
      
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meal Magik",
      home: const StartupView(),
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
