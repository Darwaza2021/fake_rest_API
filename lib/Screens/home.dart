import 'package:flutter/material.dart';


class home extends StatelessWidget {
  const home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        
        appBar:AppBar(
          title: Text("Home Page"),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: (){

                
                 Navigator.pushNamed(context,"/1_Test" );


              }, child: Text("First API")),

                Divider(height: 24, color: Colors.black,),

              ElevatedButton(onPressed: (){
                      
                      

                Navigator.pushNamed(context,"/2_Test" );

              }, child: Text("Second API")),




          ],),
        )
      
      
      ,),
      
    );
  }
}