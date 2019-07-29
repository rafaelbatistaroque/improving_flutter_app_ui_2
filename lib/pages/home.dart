import 'package:flutter/material.dart';
import 'package:improving_flutter_app_ui_2/style/fontStyle.dart';
import 'package:improving_flutter_app_ui_2/widgets/book.product.dart';
import 'package:improving_flutter_app_ui_2/widgets/categorys/categorys.listbar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6Fb),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, top: 40, right: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("PlayBook", style: headingStyle),
              Text("Mais vendidos", style: lowTextStyle),
            ],
          ),
        ),
        SizedBox(height: 20),
        CategorysList(),
        SizedBox(height: 5),
        BooksListShop(),
      ],
    );
  }
}
