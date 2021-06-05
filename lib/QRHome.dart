import 'package:flutter/material.dart';
import 'package:qr_and_barcode_scanner/Drawer.dart';
import 'package:qr_and_barcode_scanner/QR%20scanner%20page.dart';



import 'QR Create Page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
 int _selectedIndex = 0;
  
   List<Widget> _widgetOptions = <Widget>[
   QRCODECREATE(),
   QRSCANNER()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  centerTitle: true,
  title: Text('QR AND BARCODE SCANNER'),
),
    drawer: Drawers(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Generate QR Code',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scann QR Code',
          ),
         
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
    );


    
  }
 
}


