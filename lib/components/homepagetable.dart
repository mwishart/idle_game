import 'package:flutter/material.dart';

Table homePageTable (int rows){
  return Table(
      border: TableBorder.all(),

      columnWidths: {
        0: FixedColumnWidth(150.0),
        1: FixedColumnWidth(150.0),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:
      createTablerows(rows,'Sample', 'Name') //currently using a loop to create the rows. This will have to be changed later

  );
}

List<TableRow> createTablerows(int rowNum, String text1, String text2){
  List<TableRow> rows = List<TableRow>();
  for(int i = 0; i < rowNum; i++) {
    rows.add(TableRow(
        children:
        [
          Container(
            height: 30,
            child: Text(text1),
          ),
          Container(
            height: 30,
            child: Text(text2),
          )
        ]
    ));
  }
  return rows;
}