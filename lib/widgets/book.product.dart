import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improving_flutter_app_ui_2/data/book.list.dart';
import 'package:improving_flutter_app_ui_2/style/fontStyle.dart';

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
//================================
//  BOX DESCRIÇÃO
//================================
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: 190,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(0, 30),
                    blurRadius: 20,
                    spreadRadius: -10,
                  )
                ],
              ),
//================================
//  DESCRIÇÃO LIVRO
//================================
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Text(book.title,
                        style: productTitleStyle, textAlign: TextAlign.left),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text("By ${book.author}",
                        style: authorTextStyle, textAlign: TextAlign.left),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      // color: Colors.blue,
                      // margin: EdgeInsets.only(top: 5),
                      width: double.infinity,
                      child: Text("${book.pages} Pgs.",
                          style: categoryStyle, textAlign: TextAlign.left),
                    ),
                  ),
                ],
              ),
            ),
          ),
//================================
//  BOTÃO DE AÇÃO >
//================================
          Positioned(
            top: 90,
            left: 185,
            child: Center(
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, 7),
                        blurRadius: 5,
                        spreadRadius: -3,
                      )
                    ]),
                child: FlatButton(
                  child: Icon(Icons.arrow_forward_ios, color: Colors.grey[500]),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26)),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => PageReader(),
                    //   ),
                    // );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
