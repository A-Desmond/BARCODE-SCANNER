import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class QRCODECREATE extends StatefulWidget {
  @override
  _QRCODECREATEState createState() => _QRCODECREATEState();
}


class _QRCODECREATEState extends State<QRCODECREATE> {

final controller = TextEditingController();

  @override
  Widget build(BuildContext context) =>Scaffold(
   
  
    body: Center(
      child: SingleChildScrollView(

       padding: EdgeInsets.all(12),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [

       QrImage(data: controller.text,
       size: 250,
       backgroundColor: Colors.white,
      
       ),
       const SizedBox(height: 70,),
       buildTextField(context)
         ],
       ),
      ),
    ),
  );

 Widget buildTextField (BuildContext context) =>TextField(
   controller: controller,
   style: TextStyle(
     color: Colors.black,
     fontWeight: FontWeight.bold,
     fontSize: 15
   ),


   decoration: InputDecoration(
     hintText: 'Enter your data',
     hintStyle: TextStyle(color: Colors.grey),
     enabledBorder: OutlineInputBorder(
       borderRadius: BorderRadius.circular(8),
       borderSide: BorderSide(color: Colors.cyan)
     ),


     focusedBorder: OutlineInputBorder(
       borderRadius: BorderRadius.circular(8),
       borderSide: BorderSide(color: Colors.cyan)
     ),
     suffixIcon: IconButton(onPressed: () => setState(() {}),
      icon: Icon(Icons.done , color: Colors.cyan,))
   ),
   
 );
   
}
