import 'package:etscart/Views/PaymentDoneScreen.dart';
import 'package:flutter/material.dart';
class ShopingCartScreen extends StatefulWidget {
  @override
  _ShopingCartScreenState createState() => _ShopingCartScreenState();
}

class _ShopingCartScreenState extends State<ShopingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 60),
                    child: Image.asset("assets/images/ShoopingIcon.png",height: 200,width: 200,)),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  color: Colors.transparent,
                  child:  Text("Thank You for Shopping With Us",style: TextStyle(fontSize: 35),textAlign: TextAlign.center,),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                  ),

                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Text("is nice to shopping with thank you for a better experience. please improve quality, please try to integrate with AI",
                    style: TextStyle(fontSize: 18),textAlign: TextAlign.start,),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(10),
                        textColor: Colors.black,
                        color:Colors.blue,
                        onPressed: () {

                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => PaymentDoneScreen()));
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
