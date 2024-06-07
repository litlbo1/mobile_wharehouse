import 'package:flutter/material.dart';
import 'package:mobile_wharehouse/pages/wharehouses_info.dart';

class Info_Screen extends StatelessWidget {
  const Info_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Список складов"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,  // Установка направления прокрутки
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,  // Для вертикальной прокрутки содержимого таблицы
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(label: Text('Номер')),
              DataColumn(label: Text('Наименование')),
              DataColumn(label: Text('Ячейка')),
              DataColumn(label: Text('Размер')),
              DataColumn(label: Text('Стоимость')),
            ],
            rows: wharehouses_info
                .map(
                  (warehouse_info) => DataRow(
                    cells: <DataCell>[
                      DataCell(Text(warehouse_info.number.toString())), // Убедитесь, что это строка
                      DataCell(Text(warehouse_info.name)),
                      DataCell(Text(warehouse_info.shell.toString())), // Убедитесь, что это строка
                      DataCell(Text(warehouse_info.size.toString())),  // Убедитесь, что это строка
                      DataCell(Text(warehouse_info.price.toString())), // Убедитесь, что это строка
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
