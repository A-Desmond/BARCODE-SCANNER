import 'package:flutter/material.dart';

import 'package:qr_and_barcode_scanner/QRHome.dart';
import 'package:qr_and_barcode_scanner/SecondHome.dart';
import 'package:url_launcher/url_launcher.dart';

  const _url = 'https://twitter.com/27_wednesday?s=08';
  const url = 'https://t.me/rona_l';
  const gram = 'https://www.instagram.com/27_wednesday/';   
 const pay = 'https://flutterwave.com/pay/barcode';

class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) => 
  Drawer(
    child: Material(
      color: Colors.white,
      child:ListView(children:<Widget> [
        const SizedBox(height: 50,),
      items( 
        text: 'QR CODE SCAN',
        icon: Icons.qr_code,
        onClick: () => onTap(context , 0)
      ),
      Divider(height: 10, color: Colors.cyan,),
      const SizedBox(height: 30,),
      items( 
        text: 'BARCODE SCAN',
        icon: Icons.qr_code_scanner,
        onClick:  () => onTap(context , 1)
      ),
      Divider(height: 10, color: Colors.cyan,),
        const SizedBox(height: 30,),
        SelectableText('We would be very glad if you support us in cash to develop more free app.'),
        Divider(height: 10, color: Colors.cyan, ),
      
      const SizedBox(height: 30,),
      ElevatedButton(

        onPressed:_paymentURL, child: Text('SUPPORT')),
       Divider(height: 10, color: Colors.cyan, ),


     const SizedBox(height: 30,),
      SelectableText('Developed by 27W GROUP. contact us @ desmondnelson908@gmail.com .\nFollow us on our social media platforms'),
      ElevatedButton(onPressed:_twiterURL , child: Text('Twitter')),


      ElevatedButton(onPressed:_instagramURL, child: Text('Instagram')),

      
      ElevatedButton(onPressed:_telegramURL, child: Text('Telegram')),


      ],)
      )
  );

}


Widget items({
 required String text,
 required IconData icon,
 required VoidCallback onClick,
 }
 ) 

 {
 final color = Colors.cyan;
  return
ListTile(
  leading: Icon(icon, color: Colors.cyan,),
  title: Text(text,style: TextStyle(color:color),),
  onTap: onClick,
);
 }

 void onTap(BuildContext context , int index){
  Navigator.of(context).pop();
switch (index) {
  case 0:
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context)=>HomePage()));
    break;
     case 1:
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context)=>BarHome()));
    break;
    
}}



void _twiterURL()  async =>
 await canLaunch(_url) ? await launch(_url) : throw  'Can not Launch $_url';

 void _telegramURL() async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

    void _instagramURL() async =>
    await canLaunch(gram) ? await launch(gram) : throw 'Could not launch $gram';

    void _paymentURL() async => 
    await canLaunch(pay) ? await launch(pay) : throw 'Could not lauz$pay';
