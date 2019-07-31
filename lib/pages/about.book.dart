import 'package:flutter/material.dart';
import 'package:improving_flutter_app_ui_2/style/fontStyle.dart';

class PageAboutBook extends StatefulWidget {
  final String image;
  final String title;
  final int pages;
  final String author;
  final double price;
  final String about;

  PageAboutBook({
    this.image,
    this.title,
    this.pages,
    this.author,
    this.price,
    this.about,
  });

  @override
  _PageAboutBookState createState() => _PageAboutBookState();
}

class _PageAboutBookState extends State<PageAboutBook> {
  bool _stateFavorite = false;
  bool _stateBookMark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBodyAbout(),
      bottomNavigationBar: _buildButtomReadMe(),
    );
  }

  _buildBodyAbout() {
    return Column(
      children: <Widget>[
//================================
//  APP BAR
//================================
        Padding(
          padding: EdgeInsets.only(left: 10, top: 40, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.grey[500]),
                  onPressed: () => Navigator.pop(context)),
              IconButton(
                icon: _stateBookMark
                    ? Icon(Icons.bookmark, color: Colors.black)
                    : Icon(Icons.bookmark_border, color: Colors.grey[500]),
                onPressed: () {
                  setState(() => _stateBookMark = !_stateBookMark);
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, top: 20, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
//================================
//  BOOK
//================================
              Hero(
                tag: widget.image,
                child: Container(
                  width: 145,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: ExactAssetImage(widget.image),
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
//  DESCRIÇÃO
//================================
              Container(
                width: 140,
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(widget.title,
                        style: productTitleStyle, textAlign: TextAlign.center),
                    Container(
                      height: 30,
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Text("By ${widget.author}",
                          style: authorTextStyle, textAlign: TextAlign.center),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.orangeAccent, size: 15),
                        Icon(Icons.star, color: Colors.orangeAccent, size: 15),
                        Icon(Icons.star, color: Colors.orangeAccent, size: 15),
                        Icon(Icons.star_half,
                            color: Colors.orangeAccent, size: 15),
                        Icon(Icons.star_border,
                            color: Colors.orangeAccent, size: 15),
                        SizedBox(width: 10),
                        Text("4,5", style: ratingStyle),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      child: Text("${widget.pages} Pgs.",
                          style: categoryStyle, textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
//================================
//  ICONS BAR
//================================
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  tooltip: "Comentários",
                  icon: Icon(Icons.chat_bubble_outline),
                  onPressed: () {}),
              IconButton(
                tooltip: "Gostei",
                splashColor: Colors.red,
                icon: _stateFavorite
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_border),
                onPressed: () {
                  setState(() {
                    _stateFavorite = !_stateFavorite;
                  });
                },
              ),
              IconButton(
                  tooltip: "Share", icon: Icon(Icons.share), onPressed: () {}),
            ],
          ),
        ),
//================================
//  ABOUT BOOK
//================================
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 40, top: 30, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Sobre o Livro", style: productTitleStyle),
                  SizedBox(height: 20),
                  Text(widget.about,
                      style: productSubTitleStyle,
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

_buildButtomReadMe() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        width: 120,
        height: 45,
        color: Colors.blue,
        child: FlatButton(
          child: Text("Ler Agora", style: buttomReadMeStyle),
          onPressed: () {},
        ),
      ),
    ],
  );
}
