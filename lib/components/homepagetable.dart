import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/building.dart';

Table homePageTable(Map buildingData) {
  return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: FixedColumnWidth(150.0),
        1: FixedColumnWidth(150.0),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        createTablerows('Building', 'Level'), //first row. Probably going to have to change the styling to make it stand out at a later point
        for (var info in buildingData.keys)
          createTablerows(info, buildingData[info])
      ]

      );
}

TableRow createTablerows(var information, String information2) {
  String text1 = information.toString();
  String text2 = information2;
  return TableRow(children: [
    Container(
      height: 30,
      child: Text(
        text1,
        textAlign: TextAlign.center,
      ),
    ),
    Container(
      height: 30,
      child: Text(
        text2,
        textAlign: TextAlign.center
      ),
    ),
  ]);
}
