import 'package:flutter/cupertino.dart';

import 'data.dart';
import 'rating_bar.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Book book;
  Detail(this.book);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.yellow[700],
      elevation: 0.5,
      title: Center(
          child :Text(
            'Bookify',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          )),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black87,),
            onPressed: () {}),

      ],
    );

    ///details of book images and its pages
    final topLeft=Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
              tag: book.title,
              child: Material(
                elevation: 15.0,
                shadowColor: Colors.yellow.shade900,
                child: Image(
                  image: AssetImage(book.image),
                  fit: BoxFit.cover,
                ),
              )),
        ),
        text('${book.pages}pages',color: Colors.black87,size: 12)
      ],
    );
    
    //detail top right 
    final topRight=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(book.title, size: 16, isBold: true, padding: EdgeInsets.only(top:16.0)),
        text(
          'by ${book.writer}',
           color: Colors.black54,
           size: 12,
           padding: EdgeInsets.only(top :8.0, bottom: 16.0),
        ),
        Row(
          children: <Widget>[
            text(
              book.price,
              isBold: true,
              padding: EdgeInsets.only(right: 8.0),
            ),
            RatingBar(rating: book.rating,)
          ]
        ),
        SizedBox(height: 32.0,),
        MaterialButton(
            elevation: 10.0,
            onPressed: () {},
            minWidth: 16.0,
            color: Colors.blue,
            child: text('BUY IT NOW',color: Colors.white),
          ),

      ],
    );

    final topContent= Container(
      color: Colors.yellow,
      padding: EdgeInsetsDirectional.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 3, child: topRight)
        ],
      ),
    );

    //scrolling text description
    final bottomContent= Container(
      height: 220.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          book.description,
          style: TextStyle(fontSize: 13.0,height: 1.5),
        ),
      ),
    );


    return Scaffold(
      appBar: appBar,
      body: Column(
       children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  ///create text widget
  text(String data,
         { Color color=Colors.black87,
           num size=14,
           EdgeInsetsGeometry padding = EdgeInsets.zero,
           bool isBold =  false } ) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
            color: color,
            fontSize: size.toDouble(),
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal

          ),
        ),
      );


}
generateRoute(RouteSettings settings ){
  final path = settings.name.split('/');
  final title = path[1];

  Book book =books.firstWhere((it)=> it.title == title);
  return MaterialPageRoute(
    settings:settings,
    builder: (context)=> Detail(book),
  );
}