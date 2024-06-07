import 'package:flutter/material.dart';
import 'package:mobile_wharehouse/pages/wharehouses.dart'; // Правильный импорт файла

class List_Screen extends StatefulWidget {
  const List_Screen({super.key});

  @override
  State<List_Screen> createState() => _List_ScreenState();
}

class _List_ScreenState extends State<List_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Список складов"),
      ),
      body: Column(
        children: [
          DataTable(
            columns: const <DataColumn>[
              DataColumn(label: Text('Имя')),
              DataColumn(label: Text('Емкость')),
              DataColumn(label: Text('Местоположение')),
            ],
            rows: wharehouses
                .map(
                  (warehouse) => DataRow(
                    cells: <DataCell>[
                      DataCell(Text(warehouse.name)),
                      DataCell(Text(warehouse.capacity.toString())),
                      DataCell(Text(warehouse.location)),
                    ],
                  ),
                )
                .toList(),
          ),
          SizedBox(height: 40,),
          SizedBox(width: 300, child: ElevatedButton(onPressed: () {}, child: Text("Редактировать"))),
          SizedBox(height: 20,),
          SizedBox(width: 300, child: ElevatedButton(onPressed: () {Navigator.pushNamed(context, "/info_screen");}, child: Text("Просмотреть")))
        ],
      ),
    );
  }
}
