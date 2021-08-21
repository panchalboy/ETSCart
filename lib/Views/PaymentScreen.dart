
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:etscart/Views/ShopingCartScreen.dart';
import 'package:flutter/material.dart';
class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isBhimUPI=false;
  bool isDebitCard=false;
  bool isCreditCard=false;
  bool isOther=false;
  bool isCash =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color:  Color(ConvertHexToColor().hexCode("#FFC17F")),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.85,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
                ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.pop(context);
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Process Payment",style: TextStyle(fontSize: 25),),

                          ],
                        ),
                      ),
                      Divider(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child:Column(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  isBhimUPI=!isBhimUPI;
                                  isDebitCard=false;
                                  isCreditCard=false;
                                  isOther=false;
                                  isCash=false;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                child: Row(

                                  children: [
                                    Container(
                                      height:15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: isBhimUPI==true?Colors.orange:Colors.grey,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      child: Container(
                                        height:10,
                                        width: 10,
                                        margin: EdgeInsets.all(1.0),
                                        decoration: BoxDecoration(
                                            color: isBhimUPI==true?Colors.orange:Colors.grey[300],
                                            shape: BoxShape.circle
                                        ),


                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset("assets/images/IconBhim.png",width: 80,height: 20,),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text("BHIM UPI",style: TextStyle(fontSize: 20),)
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  isDebitCard=!isDebitCard;
                                  isBhimUPI=false;
                                  isCreditCard=false;
                                  isOther=false;
                                  isCash=false;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                child: Row(

                                  children: [
                                    Container(
                                      height:15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: isDebitCard==true?Colors.orange:Colors.grey,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      child: Container(
                                        height:10,
                                        width: 10,
                                        margin: EdgeInsets.all(1.0),
                                        decoration: BoxDecoration(
                                            color: isDebitCard==true?Colors.orange:Colors.grey[300],
                                            shape: BoxShape.circle
                                        ),


                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset("assets/images/IconDibitCard.png",width: 80,height: 20,),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text("Debit Card",style: TextStyle(fontSize: 20),)
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  isCreditCard=!isCreditCard;
                                  isBhimUPI=false;
                                  isDebitCard=false;
                                  isOther=false;
                                  isCash=false;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                child: Row(

                                  children: [
                                    Container(
                                      height:15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: isCreditCard==true?Colors.orange:Colors.grey,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      child: Container(
                                        height:10,
                                        width: 10,
                                        margin: EdgeInsets.all(1.0),
                                        decoration: BoxDecoration(
                                            color: isCreditCard==true?Colors.orange:Colors.grey[300],
                                            shape: BoxShape.circle
                                        ),


                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset("assets/images/IconCreditCard.png",width: 80,height: 20,),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text("Credit Card",style: TextStyle(fontSize: 20),)
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  isOther=!isOther;
                                  isBhimUPI=false;
                                  isCreditCard=false;
                                  isDebitCard=false;
                                  isCash=false;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                child: Row(

                                  children: [
                                    Container(
                                      height:15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: isOther==true?Colors.orange:Colors.grey,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      child: Container(
                                        height:10,
                                        width: 10,
                                        margin: EdgeInsets.all(1.0),
                                        decoration: BoxDecoration(
                                            color: isOther==true?Colors.orange:Colors.grey[300],
                                            shape: BoxShape.circle
                                        ),


                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset("assets/images/IconPaypal.png",width: 80,height: 20,),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text("Other",style: TextStyle(fontSize: 20),)
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  isCash=!isCash;
                                  isBhimUPI=false;
                                  isCreditCard=false;
                                  isOther=false;
                                  isDebitCard=false;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                child: Row(

                                  children: [
                                    Container(
                                      height:15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: isCash==true?Colors.orange:Colors.grey,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      child: Container(
                                        height:10,
                                        width: 10,
                                        margin: EdgeInsets.all(1.0),
                                        decoration: BoxDecoration(
                                            color: isCash==true?Colors.orange:Colors.grey[300],
                                            shape: BoxShape.circle
                                        ),


                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset("assets/images/IconCash.png",height: 20,width: 80,),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text("Cash",style: TextStyle(fontSize: 20),)
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                          ],
                        ),
                      )
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
                    Text("Pay \u20B9135",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => ShopingCartScreen()));
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
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
