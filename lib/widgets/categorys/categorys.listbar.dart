import 'package:flutter/material.dart';
import 'package:improving_flutter_app_ui_2/data/categorys.list.dart';
import 'package:improving_flutter_app_ui_2/style/fontStyle.dart';

class CategorysList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorys.length,
          itemBuilder: (context, index) {
            var category = categorys[index];
            return _buildItemCategory(category, index);
          }),
    );
  }
}

Widget _buildItemCategory(String category, int index) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(right: 10),
    child: Chip(
      elevation: 2,
      backgroundColor: Colors.grey[200],
      label: Text(category, style: categoryStyle),
    ),
  );
}
