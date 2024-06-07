import 'package:flutter/material.dart';
import 'package:mobile_wharehouse/pages/info_screen.dart';
import 'package:mobile_wharehouse/pages/lobby_screen.dart';
import 'package:mobile_wharehouse/pages/login_screen.dart';
import 'package:mobile_wharehouse/pages/register_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login_screen',
       routes: {
        '/login_screen':(context) => Login_Screen(),
        '/register_screen':(context) => Register_Screen(),
        '/lobby_screen':(context) => Lobby_Screen(),
        '/info_screen':(context) => Info_Screen(),
      },
    );
  }
}
