import 'dart:async';

import 'package:etscart/Views/ProductScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
class BarCodeScannerScreen extends StatefulWidget {
  @override
  _BarCodeScannerScreenState createState() => _BarCodeScannerScreenState();
}


class _BarCodeScannerScreenState extends State<BarCodeScannerScreen> {
  String _scanBarcode = 'Unknown';


  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;

    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (context) => ProductScreen()));
      print("result==${barcodeScanRes}");
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }


    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

            body: Builder(builder: (BuildContext context) {
              return Container(
                  alignment: Alignment.center,
                  child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.orangeAccent,
                              size: 25,
                            ),
                            onPressed: () {
                              scanBarcodeNormal();
                            },
                          ),
                        ),

                        Text('Scan result : $_scanBarcode\n',
                            style: TextStyle(fontSize: 20))
                      ]));
            })));
  }
}
