import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_Screen extends StatefulWidget {
  const Add_Screen({super.key});

  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Добавление Склада"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
            style: const TextStyle(color: Color(0xFFD1D1D1)),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: 'Введите наименование',
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
                fillColor: const Color(0xff808080),
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
                hintText: 'Введите адрес',
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
                fillColor: const Color(0xff808080),
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
                hintText: 'Введите вместимость',
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
                fillColor: const Color(0xff808080),
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
                hintText: 'Описание',
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
                fillColor: const Color(0xff808080),
            ),
          ),
          ),
          SizedBox(height: 40,),
          SizedBox(width: 200, height: 40, child: ElevatedButton(onPressed: () {}, child: Text("Сохранить")))
        ],
      ),
    );
  }
}