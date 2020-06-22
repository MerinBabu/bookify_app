import 'package:flutter/material.dart';
import 'package:bookapp/screens/home/data.dart';
import 'detail.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //appbar
    final appBar = AppBar(
      backgroundColor: Colors.yellow[700],
      elevation: 0.5,
      leading: IconButton(
        icon: Icon(
            Icons.menu,
            color: Colors.black87,),
        onPressed: () {},
      ),
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
    //create book tile here
    createTile(Book book) => Hero(
      tag: book.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.yellow.shade900,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder:(context)=> Detail(book)));
          },
          child: Image(
            image: AssetImage(book.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

    //create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
            padding: EdgeInsets.all(16.0),
            sliver: SliverGrid.count(
                childAspectRatio: 2/3,
                crossAxisCount: 3,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                children: books.map((book)=> createTile(book)).toList(),
            ),
        )
      ],
    );
    return  Scaffold(
        backgroundColor : Colors.yellow,
        appBar: appBar,
        body: grid,
      );

  }

}
//Generate parameterized route -> e.g : detail/some book title
//generateRoute(RouteSettings settings ){
//  final path = settings.name.split('/');
//  final title = path[1];
//
//  Book book =books.firstWhere((it)=> it.title == title);
//  return MaterialPageRoute(
//    settings:settings,
//    builder: (context)=> Detail(book),
//  );
//}