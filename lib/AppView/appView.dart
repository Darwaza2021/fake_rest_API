import 'package:assingnment/Screens/1_API.dart';
import 'package:assingnment/Screens/2_API.dart';
import 'package:assingnment/Screens/home.dart';
import 'package:flutter/material.dart';



class appView extends StatelessWidget {
  const appView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      initialRoute: "/",

      routes: {

    "/":(context)=>home(),
    "/1_Test":(context)=>Test_1(),
    "/2_Test":(context)=>Test_2(),

      },


      
      
    );
  }
}