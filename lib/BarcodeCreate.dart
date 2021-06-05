import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';


class BarcodeCreate extends StatefulWidget {
  @override
  _BarcodeCreateState createState() => _BarcodeCreateState();
}


class _BarcodeCreateState extends State<BarcodeCreate> {

final controller = TextEditingController();

  @override
  Widget build(BuildContext context) =>Scaffold(
    
  
  
    body: Center(
      child: SingleChildScrollView(

       padding: EdgeInsets.all(12),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
    Card( 
      color: Colors.white,
      child:Padding(padding: 
      EdgeInsets.all(16),
      child:
       BarcodeWidget(
      barcode: Barcode.code128(),
         data: controller.text,
       backgroundColor: Colors.white, 
      height: 200,
      width: 200,
      drawText: false,
       ),)),
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
