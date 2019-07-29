import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improving_flutter_app_ui_2/data/book.list.dart';

class BooksListShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: listBooks.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return _buildBookItemShop(context, index);
            }),
      ),
    );
  }
}

Widget _buildBookItemShop(BuildContext context, int index) {
  var book = listBooks[index];
  return Padding(
    padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
    child: Container(
      height: 240,
      // color: Colors.lightBlue,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
//================================
//  CAPA LIVRO
//================================
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 15),
              width: 145,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: ExactAssetImage(book.image),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
