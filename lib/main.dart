  // @dart = 2.7


import 'package:flutter/material.dart';



import 'QRHome.dart';



void main() {
 
  
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR AND BARCODE SCANNER',
      theme: ThemeData(
        
        primarySwatch: Colors.cyan,
      ),
      home: HomePage(),  
  
    );
  }
}

