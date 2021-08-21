import 'package:flutter/material.dart';
class PaymentDoneScreen extends StatefulWidget {
  @override
  _PaymentDoneScreenState createState() => _PaymentDoneScreenState();
}

class _PaymentDoneScreenState extends State<PaymentDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset("assets/images/paymentDone.png",height: 150,width: 150,)),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.transparent,
                child:  Text("Done",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              ),
              Container(

                color: Colors.transparent,
                child:  Text("#584248174124812gghhfbhjm90",style: TextStyle(fontSize: 15,),textAlign: TextAlign.center,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.transparent,
                child:  Text("25 fab 2021, 1:10:05 PM",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),textAlign: TextAlign.center,),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(

                        color: Colors.transparent,
                        child:  Text("invoice Number",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),textAlign: TextAlign.center,),
                      ),
                      Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: Colors.transparent,
                    child:  Text("#584248174124812gg",style: TextStyle(fontSize: 15,),textAlign: TextAlign.center,),
                  ),
                      Container(
                        color: Colors.transparent,
                        child:  Icon(
                          Icons.qr_code,
                          size: 35,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.transparent,
                        child:  Text("Generate QR",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200),textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
