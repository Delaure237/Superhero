 import 'package:flutter/material.dart';
 class Details  extends StatelessWidget {
   const Details ({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Details"),
          centerTitle: true,
        ),
     );
   }
 }
