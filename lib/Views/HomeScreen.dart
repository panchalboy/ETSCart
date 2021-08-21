import 'package:dotted_border/dotted_border.dart';
import 'package:etscart/Utils/Color.dart';
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:etscart/Views/BarCodeScannerScreen.dart';
import 'package:etscart/Views/CartScreen.dart';
import 'file:///E:/FlutterWS/etscart/lib/Views/History/HistoryScreen.dart';
import 'package:etscart/Views/NotesScreen.dart';
import 'package:etscart/Views/NotificationScreen.dart';
import 'package:etscart/Views/ProductScreen.dart';
import 'package:etscart/Views/EditProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ProfileScreen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _scanBarcode;
  @override
  initState() {
    super.initState();

    _modalBottomSheetMenu();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor:Colors.white,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(ConvertHexToColor().hexCode(ColorCode.hmpFloatingBtn)),
          onPressed: () {
            scanBarcodeNormal();
          },
          child: Image.asset("assets/images/bottonScannerIcon.png"),
          elevation: 2.0,
        ),

        bottomNavigationBar: BottomNavBar(),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [

                Container(
                    color:Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),
                    child: ProfileImage(context)),
                Container(

                  color: Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),
                  child: Column(
                    children: [
                      HeaderView(context)

                    ],
                  ),
                ),

              ],
            ),
          ),
        ));
  }

  Widget ProfileImage(BuildContext context){
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          InkWell(
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => ProfileScreen()));
            },
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset(
                'assets/images/profile.png',
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget HeaderView(BuildContext context) {
    return Stack(

      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.63,
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello",style: GoogleFonts.poppins(textStyle:TextStyle(color: Colors.white70,fontSize: 20))),

              Text("Adhiraj Singh",style: GoogleFonts.poppins(textStyle:TextStyle(color: Colors.white,fontSize: 27))),
            ],
          ),
        ),
        Positioned(
          top: 120,

          child: Container(
            height: MediaQuery.of(context).size.height*0.60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(ConvertHexToColor().hexCode(ColorCode.hmpMiddlePartBg)),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))
            ),
            child: Column(
              children: [
                SizedBox(height: 15,),
                _scanBarcode==null?
                DottedBorder(
                  strokeWidth: 2,
                  dashPattern: [3, 3, 3, 3],
                  borderType: BorderType.RRect,
                  color:Color(ConvertHexToColor().hexCode(ColorCode.hmpFloatingBtn)),
                  radius: Radius.circular(12),
                  padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 70,
                      width: MediaQuery.of(context).size.width*0.70,
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          scanBarcodeNormal();
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: Container(
                                  child: Image.asset("assets/images/cameraIcon.png",height: 80,width: 80,)),
                            ),

                            Text("Scan Your Mall/Store",style: TextStyle(color: Color(ConvertHexToColor().hexCode(ColorCode.hmpFloatingBtn))),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ):

                 MiddlePart(context),

                 _scanBarcode==null?ButtonPart(context):Container(),

              ],
            ),

          ),
        ),

      ],

    );
  }
  Widget MiddlePart(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.58,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              //color: Color(ConvertHexToColor().hexCode(ColorCode.hmpMiddlePartBg)),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))
          ),
          child: Column(
            children: [

              Text(_scanBarcode,style: GoogleFonts.poppins(textStyle:TextStyle(color: Color(ConvertHexToColor().hexCode("#FFC17F")),fontSize: 24,fontWeight: FontWeight.bold))),

              Text("6,Bheru Ghati Ila ji Ka Neem,Udaipur/na;lk;lkasdf;lkjasd",textAlign: TextAlign.center,style: GoogleFonts.poppins(textStyle:TextStyle(color: Colors.white54,fontSize: 15,fontWeight: FontWeight.w300))),
            ],
          ),

        ),


        Positioned(
          top: 100,
          bottom: 10,
          child: ButtonPart(context),)
      ],
    );
  }
  Widget ButtonPart(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: MediaQuery.of(context).size.height*0.45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){

              scanBarcodeProduct();
            },
            child: Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 50),
              decoration: new BoxDecoration(
                color: Colors.white,

              ),
              child: Card(
                elevation: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 60),
                  color: Colors.transparent,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/invoiceIcon.png"),
                      SizedBox(width: 10,),
                      Text("Create New Invoice",style: TextStyle(fontSize: 15,color: Colors.indigo),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),

          InkWell(
            onTap: (){

              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => HistoryScreen()));
            },
            child: Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 50),
              decoration: new BoxDecoration(
                color: Colors.white,

              ),
              child: Card(
                elevation: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 60),
                  color: Colors.transparent,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/historyIcon.png"),
                      SizedBox(width: 10,),
                      Text("View History",style: TextStyle(fontSize: 15,color: Colors.indigo),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => NotesScreen()));
            },
            child: Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 50),
              decoration: new BoxDecoration(
                color: Colors.white,

              ),
              child: Card(
                elevation: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 60),
                  color: Colors.transparent,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/shopingNotes.png"),
                      SizedBox(width: 10,),
                      Text("Shopping Notes",style: TextStyle(fontSize: 15,color: Colors.indigo),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
  Widget BottomNavBar() {
    return BottomAppBar(
      shape : CircularNotchedRectangle(),
      child: Container(

        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => NotificationScreen()));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.transparent,
                    child: Icon(Icons.notifications_none_outlined))),

            InkWell(
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => CartScreen()));
                },
                child:  Container(
                    height: 50,
                    width: 50,
                    color: Colors.transparent,
                    child: Image.asset("assets/images/IconCart.png"))
            ),
          ],
        ),
      ),
    );
  }

  Future<void> scanBarcodeNormal() async {
    var barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);

      print("result==${barcodeScanRes}");
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }


    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
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

  void _modalBottomSheetMenu() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight:Radius.circular(40.0),topLeft: Radius.circular(40.0))
          ),
          builder: (builder) {
            return new Container(

              height: MediaQuery.of(context).size.height/2,
              color:
              Colors.transparent, //could change this to Color(0xFF737373),
              //so you don't have to change MaterialApp canvasColor
              child: new Container(
                  height: MediaQuery.of(context).size.height/2,
                  decoration: new BoxDecoration(

                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(

                        margin: EdgeInsets.only(bottom:10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.keyboard_arrow_down,
                                color: Color(ConvertHexToColor().hexCode("#FFC17F")),
                                size: 50,),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          scanBarcodeNormal();
                          Navigator.pop(context);
                        },
                        child: Container(


                          // decoration: BoxDecoration(
                          //   shape: BoxShape.circle,
                          //   color: Colors.black,
                          // ),
                          child:  Center(child: Image.asset("assets/images/ScannerBig.png")),

                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text("Hello Please Scan",style: TextStyle(fontSize: 18,color: Color(ConvertHexToColor().hexCode("#FFC17F"))),),

                      Text("the Store/Mart Code",style: TextStyle(fontSize: 18,color: Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),)),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
            );
          });
    });
  }
}
class NavigationDrawerHome extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawerHome> {
  bool progrssBar = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            InkWell(

              child: Container(
                padding: EdgeInsets.all(10.0),
                height: 90,
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(color:Theme.of(context).accentColor,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "adhiraj",
                              maxLines: 1,
                              style: TextStyle(
                                // decoration: TextDecoration.underline,
                                  fontSize: 15.0,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '+91-asdfdg',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white70),
                            )
                          ],
                        )),

                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(children: <Widget>[

                ListTile(
                  title: Text(
                    'FAQs',
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                  ),
                  leading: Icon(
                    Icons.help,
                    size: 25.0,
                    color: Colors.black87,
                  ),
                  onTap: () {

                  },
                ),
                ListTile(
                  title: Text(
                    'Reset Password',
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                  ),
                  leading: Icon(
                    Icons.reset_tv,
                    size: 25.0,
                    color: Colors.black87,
                  ),
                  onTap: () {

                  },
                ),
              ]),
            ),
            Container(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Column(
                      children: <Widget>[
                        Divider(),
                        ListTile(
                            leading: Icon(
                              Icons.logout,
                              size: 25.0,
                              color: Colors.black87,
                            ),
                            onTap: () {

                            },
                            title: Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.black87),
                            )),
                      ],
                    ))),
          ],
        ),
      ),
    );

  }



}

