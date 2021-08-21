
import 'package:etscart/Model/ShoppingCardModel.dart';
import 'package:etscart/Utils/Color.dart';
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:etscart/Views/PaymentScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:toast/toast.dart';
import 'BarCodeScannerScreen.dart';
import 'ProductScreen.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}
List<ShoppingCardModel>shoppingCardModel=[
  ShoppingCardModel("assets/images/parleg.png", "Parle G", "Biscuit(56.4gm)", 1, 5.00),
  ShoppingCardModel("assets/images/parleg.png", "Parle G", "Biscuit(56.4gm)", 1, 5.00),
  ShoppingCardModel("assets/images/parleg.png", "Parle G", "Biscuit(56.4gm)", 1, 5.00),
  ShoppingCardModel("assets/images/parleg.png", "Parle G", "Biscuit(56.4gm)", 1, 5.00),
  ShoppingCardModel("assets/images/parleg.png", "Parle G", "Biscuit(56.4gm)", 1, 5.00),

];


class _CartScreenState extends State<CartScreen> {
  bool totalContanier=true;
  var _scanBarcode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,

          leading:  IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {

              Navigator.pop(context);

            },
          ),
          title: Container(


              child: Text("Shopping Cart",style: TextStyle(color: Colors.black),)),
          actions: [
            InkWell(
                onTap: (){
                  scanBarcodeProduct();
                },
                child: Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset("assets/images/IconScanner.png",height: 30,width: 30,)))
          ],
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(

                color:  Color(ConvertHexToColor().hexCode(ColorCode.hmpFloatingBtn)),

            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.78,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
                  ),

                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Container(
                          //   width: MediaQuery.of(context).size.width,
                          //   color: Colors.transparent,
                          //   height: 50,
                          //   child: Row(
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       IconButton(
                          //         icon: Icon(
                          //         Icons.arrow_back,
                          //           color: Colors.black,
                          //           size: 25,
                          //         ),
                          //         onPressed: () {
                          //
                          //            Navigator.pop(context);
                          //
                          //         },
                          //       ),
                          //
                          //     ],
                          //   ),
                          // ),
                          // Container(
                          //   margin: EdgeInsets.symmetric(horizontal: 10),
                          //   width: MediaQuery.of(context).size.width,
                          //   color: Colors.transparent,
                          //
                          //   child: Row(
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Text("Shopping Cart",style: TextStyle(fontSize: 30),),
                          //       InkWell(
                          //           onTap: (){
                          //             Navigator.of(context).push(new MaterialPageRoute(
                          //                 builder: (context) => BarCodeScannerScreen()));
                          //           },
                          //           child: Image.asset("assets/images/IconScanner.png",height: 30,width: 30,))
                          //     ],
                          //   ),
                          // ),
                          SizedBox(
                            height: 10,
                          ),
                          shoppingCardModel.length==0?
                              Container(
                               margin: EdgeInsets.symmetric(horizontal: 20),
                                color: Color(ConvertHexToColor().hexCode(ColorCode.backgroundColors)),
                                height: 500,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                        onTap: (){
                                          scanBarcodeProduct();
                                        },
                                        child: Center(child: Image.asset("assets/images/ScannerBig.png"))),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Text("Cart is Empty",textAlign: TextAlign.left,style: TextStyle(color: Colors.grey[500],fontSize: 15),),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text("Please Click on Above and Scan with UPC Code of Product",style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ):
                          Stack(
                            overflow: Overflow.visible,
                            children: [
                              Container(
                                decoration:  BoxDecoration(
                          color: Color(ConvertHexToColor().hexCode(ColorCode.backgroundColors)),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
                          ),
                                  height: totalContanier==true?MediaQuery.of(context).size.height*0.75:MediaQuery.of(context).size.height*0.75,
                                  child: ListView.builder(
                                      itemCount: shoppingCardModel.length,
                                      itemBuilder: (BuildContext context, int index){
                                        return   Card(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                color: Colors.transparent,
                                                margin: EdgeInsets.all(5),
                                                width: MediaQuery.of(context).size.width*0.35,
                                                child: Image.asset(shoppingCardModel[index].productImage,height:100,width: 100,),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(top: 10,),
                                                color: Colors.transparent,

                                                width: MediaQuery.of(context).size.width*0.60,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,

                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(shoppingCardModel[index].productName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                                        InkWell(
                                                          onTap: (){
                                                            setState(() {
                                                              shoppingCardModel.removeAt(index);
                                                            });
                                                          },
                                                          child: Container(
                                                            padding: EdgeInsets.only(left: 5,top: 5,bottom: 5,right: 25),
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                                                  bottomLeft: Radius.circular(20)),
                                                              color: Colors.blueAccent,
                                                            ),

                                                            child:  Icon(Icons.clear,
                                                              size: 20,
                                                              color: Colors.white,),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Text(shoppingCardModel[index].productSubTitle,style: TextStyle(fontWeight: FontWeight.w300,),),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Container(
                                                          height: 25,
                                                          decoration: BoxDecoration(
                                                              color: Colors.transparent,
                                                              borderRadius: BorderRadius.circular(5)
                                                          ),

                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Container(
                                                                decoration: BoxDecoration(
                                                                  borderRadius: BorderRadius.circular(5),
                                                                  color: Colors.blue,
                                                                ),
                                                                height:30,
                                                                width: 30,
                                                                child: InkWell(
                                                                  onTap: (){
                                                                    setState(() {
                                                                      _decrementCounter(index);
                                                                      print(shoppingCardModel[index].productQty);

                                                                    });
                                                                  },
                                                                  child: Icon(
                                                                    Icons.remove,
                                                                    size: 15,
                                                                    color: Colors.white,
                                                                  ),
                                                                ),

                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(shoppingCardModel[index].productQty.toString()),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Container(
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(5),
                                                                    color: Colors.blue,
                                                                  ),
                                                                  height:25,
                                                                  width: 30,
                                                                  child: InkWell(
                                                                    onTap: (){
                                                                      setState(() {
                                                                        _incrementCounter(index);
                                                                        print(shoppingCardModel[index].productQty);

                                                                      });
                                                                    },
                                                                    child: Icon(
                                                                      Icons.add,
                                                                      size: 15,
                                                                      color: Colors.white,
                                                                    ),
                                                                  )


                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Text("\u20B9${shoppingCardModel[index].productPrice.toString()}",style: TextStyle(fontSize: 20),),
                                                      ],
                                                    ),

                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                  )

                              ),
                              Positioned(

                                  bottom: -23,
                                  child: totalContanier==true?

                              InkWell(
                                onTap: (){
                                  setState(() {
                                    totalContanier=false;
                                  });

                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 10),
                                  height: 55,
                                  width: MediaQuery.of(context).size.width*0.90,
                                  color: Colors.transparent,
                                  child: Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 20),
                                      color: Colors.transparent,
                                      height: 50,
                                      child:Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Totel Price"),
                                          Text("\u20B9 90:00",style: TextStyle(fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ):
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    totalContanier=true;
                                  });
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.90,
                                  margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
                                  child: Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(

                                          margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Sub Total"),
                                              Text("90:00")
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(horizontal: 10),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("CGST"),
                                              Text("90:00")
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(horizontal: 10),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("SGST"),
                                              Text("90:00")
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5,right: 10,left: 10),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Totel Price"),
                                              Text("\u20B9 90:00",style: TextStyle(fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                  ),
                                ),
                              )
                              )
                            ],

                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Go To Payment",style: TextStyle(fontSize: 20,color: Colors.white),),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => PaymentScreen()));
                        },
                        child: Container(
                          width: 80,
                          padding: EdgeInsets.only(left: 10,top: 8,bottom:8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            color: Colors.white,
                          ),

                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/images/rightArrow.png",height: 40,width: 40,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
       ),
      ),
    );
  }


  _incrementCounter(int i) {

    shoppingCardModel[i].productQty++;
    setState(() {
      print(shoppingCardModel[i].productPrice);
    });
  }
  _decrementCounter(int i){
    if(shoppingCardModel[i].productQty<=1){
      Toast.show("minmum 1 product in your Cart", context,
          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
    }
    else{
      shoppingCardModel[i].productQty--;
      setState(() {
        shoppingCardModel[i].productPrice-=5;
        print(shoppingCardModel[i].productPrice);
      });
    }

  }

  Future<void> scanBarcodeProduct() async {
    var barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
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




}
