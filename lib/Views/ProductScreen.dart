import 'package:etscart/Utils/ConvertColor.dart';
import 'package:etscart/Views/CartScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:toast/toast.dart';
import 'BarCodeScannerScreen.dart';
class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  int productQuanity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                    color: Color(ConvertHexToColor().hexCode("#FFC17F")),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50))
                ),

                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 25,
                            ),
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                          ),

                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) =>
                                      BarCodeScannerScreen()));
                            },
                            child: Container(
                                margin: EdgeInsets.all(5),
                                child: Image.asset(
                                    "assets/images/bottonScannerIcon.png")),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Parle G Biscuit (56.4gm)",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),)),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("(5% OFF Above 9)", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),)),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100, left: 20, right: 20),

                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Price", style: TextStyle(
                                  fontSize: 12, color: Colors.grey[500]),),
                              InkWell(
                                  onTap: () {
                                    print("dfdgfh");
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: Icon(
                                      Icons.share,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  )
                              ),
                            ],
                          ),

                          Text("\u20B945.00", style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Text("M.R.P:Each 4.50/", style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),),
                              Text("5.00 ", style: TextStyle(color: Colors.grey,
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Text("Quantity:56.4gm", style: TextStyle(
                              color: Colors.black, fontSize: 12),),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            height: 30,
                            width: MediaQuery.of(context).size.width*0.33,
                            decoration
                                : BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){
                                    _decrementCounter();
                                  },
                                ),

                                Text("${productQuanity}",style: TextStyle(color: Colors.white),),
                                SizedBox(
                                  width: 2,
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  onPressed: (){
                                    _incrementCounter()
                                    ;
                                  },
                                ),
                              ],
                            ),
                          ),

                          Text("I express my gratitude towards Mr. Pawan Hemrajani, Director of Bakers Pvt. Ltd. for taking part in useful decision and giving me all necessary advice and guidance and had also made all arrangements to make the internship enjoyable. I am really thankful to the staff of the human resource department."),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 250,
                      right: 0,
                      left: 0,
                      top: -230,
                      child: Container(
                        color: Colors.transparent,
                        child: Image.asset("assets/images/parleg.png"),
                      ),
                    ),


                  ],

                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20, bottom: 15),
                height: 50,
                color: Colors.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.70,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(10),
                        textColor: Colors.black,
                        color: Colors.blue,
                        onPressed: () {
                          // Navigator.of(context).push(new MaterialPageRoute(
                          //     builder: (context) => PaymentDoneScreen()));
                        },
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                              fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => CartScreen()));
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title'
    );
  }

  printf() {
    print('cmdsgvdfg');
  }

  _decrementCounter() {
    if (productQuanity <= 1) {
      Toast.show("minmum 1 product in your Cart", context,
          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
    }
    else {
      productQuanity--;
      setState(() {
        print(productQuanity);
      });
    }
  }

  _incrementCounter() {
    productQuanity++;
    setState(() {
      print(productQuanity);
    });
  }
}
