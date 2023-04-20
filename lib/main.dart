import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapi/screens/homescreen/provider/home_provider.dart';
import 'package:weatherapi/screens/homescreen/view/home_screen.dart';
import 'package:weatherapi/screens/homescreen/view/web_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'web': (context) => WebScreen(),
        },
      ),
    ),
  );
}
