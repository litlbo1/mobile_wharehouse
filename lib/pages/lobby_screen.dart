import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_wharehouse/pages/add_new.dart';
import 'package:mobile_wharehouse/pages/list_screen.dart';
import 'package:mobile_wharehouse/pages/profile.dart';
import 'package:pie_chart/pie_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';


class Lobby_Screen extends StatefulWidget {
  const Lobby_Screen({super.key});

  @override
  State<Lobby_Screen> createState() => _Lobby_ScreenState();
}

class _Lobby_ScreenState extends State<Lobby_Screen> {
    void _onItemTapped(int index) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Center(child: _page.elementAt(_selectedIndex)),
      bottomNavigationBar: Container(
        color: const Color(0xFFB8B6D7),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GNav(
            tabBackgroundColor: const Color(0xFFC5C9E8),
            gap: 4,
            padding: const EdgeInsets.all(15),
            tabs: const [
              GButton(
                icon: Icons.list,
                text: "Главная",
                iconSize: 30,
              ),
              GButton(
                icon: Icons.star,
                text: "Добавить",
                iconSize: 30,
              ),
              GButton(
                icon: Icons.map,
                text: "Список",
                iconSize: 30,
              ),
              GButton(
                icon: Icons.supervised_user_circle,
                text: "Профиль",
                iconSize: 30,
              )
            ],
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
          ),
        ),
      ),
    ));
  }
  static final List<Widget> _page = <Widget>[
    Statistic_screen(),
    Add_Screen(),
    List_Screen(),
    Profile_Screen()
  ];
}


class Statistic_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Заполнено": 75,
      "Свободно": 25,
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Состояние Склада'),
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          PieChart(
            dataMap: dataMap,
            animationDuration: const Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 2,
            colorList: const [Colors.blue, Colors.lightBlueAccent],
            initialAngleInDegree: 0,
            chartType: ChartType.ring,
            ringStrokeWidth: 32,
            centerText: "100%",
            legendOptions: const LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              legendShape: BoxShape.circle,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: const ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: true,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
            ),
          ),
          const SizedBox(height: 20,),
          const Text("Склад номер: 1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          const SizedBox(height: 5,),
          const Text("Зимняя обувь", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          const SizedBox(height: 30,),
          const Text("Описание Склада", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(255, 206, 206, 206)),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(alignment: Alignment.topLeft, child: Text("Склад 1. Используеться для хранения зимней\nобуви на продажу", style: TextStyle(fontSize: 20),)),
                    SizedBox(height: 10,),
                    Align(alignment: Alignment.topLeft, child: Text("Ответственный за склад: Осипова Ирина", style: TextStyle(fontSize: 20),)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}








