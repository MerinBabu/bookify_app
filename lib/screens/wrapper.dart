import 'package:bookapp/models/user.dart';
import 'package:bookapp/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:bookapp/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user=Provider.of<User>(context);
    print(user);
    //return either Home or Authenticate widget
    if(user==null){
      return Authenticate();

    }
    else{
      return Home();
    }
  }
}
