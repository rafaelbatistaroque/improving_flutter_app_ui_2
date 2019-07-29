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
  return Align(
    alignment: Alignment.topCenter,
    child: Container(
      height: 30,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Text(category, style: categoryStyle),
        onPressed: () {},
      ),
      decoration: BoxDecoration(
        color: (index % 2 == 0) ? Colors.grey[200] : Colors.blue[200],
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.12),
              blurRadius: 12,
              offset: Offset(0, 7),
              spreadRadius: 1)
        ],
      ),
    ),
  );
}
