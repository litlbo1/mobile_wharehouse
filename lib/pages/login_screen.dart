import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffC33764), Color(0xff1D2671)])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Добро пожаловать!", style: TextStyle(fontSize: 20, color: Colors.white),),
              const SizedBox(height: 40,),
              const Text("Sneaker Shop", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
              const SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextField(
                  style: const TextStyle(color: Color(0xFFD1D1D1)),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Почта',
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                          ),
                      ),
                      filled: true,
                      contentPadding: const EdgeInsets.all(9),
                      fillColor: const Color.fromARGB(255, 49, 49, 49),
                  ),
                ),
                ),
                SizedBox(height: 30,),
                Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                style: const TextStyle(color: Color(0xFFD1D1D1)),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: 'Пароль',
                    hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                            width: 0, 
                            style: BorderStyle.none,
                        ),
                    ),
                    filled: true,
                    contentPadding: const EdgeInsets.all(9),
                    fillColor: const Color.fromARGB(255, 49, 49, 49),
                ),
              ),
              ),
              const SizedBox(height: 50,),
              SizedBox(width: 220, child: ElevatedButton(onPressed: () {Navigator.pushNamed(context, '/lobby_screen');}, child: const Text("Войти"))),
              const SizedBox(height: 60,),
              SizedBox(width: 180, child: ElevatedButton(onPressed: () {Navigator.pushNamed(context, '/register_screen');}, child: const Text("Создать аккаунт")))
            ],
          ),
        ),
      ),
    );
  }
}