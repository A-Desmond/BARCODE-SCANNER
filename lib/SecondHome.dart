import 'package:flutter/material.dart';
import 'package:qr_and_barcode_scanner/BarcodeCreate.dart';
import 'package:qr_and_barcode_scanner/BarcodeScann.dart';
import 'package:qr_and_barcode_scanner/Drawer.dart';

class BarHome extends StatefulWidget {
  @override
  _BarHomeState createState() => _BarHomeState();
}

class _BarHomeState extends State<BarHome> {

 int _selectedIndex = 0;
  
   List<Widget> _widgetOptions = <Widget>[
  BarcodeCreate(),
   BarScan(),
   
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
            label: 'Generate Barcode',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Scann Barcode',
          ),
         
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
    );
  }}