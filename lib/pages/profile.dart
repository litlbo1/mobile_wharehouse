import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Профиль"),
      ),
      body: Column(
        children: [
           Padding(
             padding: const EdgeInsets.only(left: 40, right: 40),
             child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(255, 206, 206, 206)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Align(alignment: Alignment.topLeft, child: Text("Имя: Maxim", style: TextStyle(fontSize: 18),)),
                      SizedBox(height: 10,),
                      Align(alignment: Alignment.topLeft, child: Text("Логин: Maxim_admin", style: TextStyle(fontSize: 18))),
                      SizedBox(height: 10,),
                      Align(alignment: Alignment.topLeft, child: Text("Почта: maxim@gmail.com", style: TextStyle(fontSize: 18))),
                    ],
                  ),
                ),
              ),
            ),
           ),
           SizedBox(height: 50,),
           SizedBox(width: 300, child: ElevatedButton(onPressed: () {}, child: Text("Запросить восстановление пароля"))),
           SizedBox(height: 20,),
           SizedBox(width: 300,child: ElevatedButton(onPressed: () {}, child: Text("Удалить аккаунт"))),
           
        ],
      ),
    );
  }
}