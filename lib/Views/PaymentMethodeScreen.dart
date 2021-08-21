import 'package:etscart/Utils/Color.dart';
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PaymentMethodeScreen extends StatefulWidget {
  @override
  _PaymentMethodeScreenState createState() => _PaymentMethodeScreenState();
}

class _PaymentMethodeScreenState extends State<PaymentMethodeScreen> {
  bool isCanara=false;
  bool isSBI=false;
  bool isPaytm=false;
  bool addCard=false;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),
        title: Text("Payment Method"),
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text("Choose any option to add Money",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Text(
                        'CANARA- Rupay Debit Card',
                        style: TextStyle(fontSize: 14.0, color: Colors.black87),
                      ),
                      subtitle: Text("8527 **** **** 57157",style: TextStyle(fontSize: 12.0)),
                      leading:Container(
                        margin: EdgeInsets.only(top: 15),
                        height:15,
                        width: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: isCanara==true?Colors.blue:Colors.grey,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Container(
                          height:10,
                          width: 10,
                          margin: EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                              color: isCanara==true?Colors.blue:Colors.grey[300],
                              shape: BoxShape.circle
                          ),


                        ),
                      ),

                      onTap: () {
                      setState(() {
                        isCanara=true;
                        isSBI=false;
                        isPaytm=false;
                      });
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'SBI- Rupay Debit Card',
                        style: TextStyle(fontSize: 14.0, color: Colors.black87),
                      ),
                      subtitle: Text("8527 **** **** 57157",style: TextStyle(fontSize: 12.0)),
                      leading:Container(
                        margin: EdgeInsets.only(top: 15),
                        height:15,
                        width: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: isSBI==true?Colors.blue:Colors.grey,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Container(
                          height:10,
                          width: 10,
                          margin: EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                              color: isSBI==true?Colors.blue:Colors.grey[300],
                              shape: BoxShape.circle
                          ),


                        ),
                      ),

                      onTap: () {
                        setState(() {
                          isSBI=true;
                          isCanara=false;
                          isPaytm=false;
                        });
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Paytm Balance',
                        style: TextStyle(fontSize: 14.0, color: Colors.black87),
                      ),
                      subtitle: Text("Whenever Wallet Balance runs low",style: TextStyle(fontSize: 12.0)),
                      leading:Container(
                        margin: EdgeInsets.only(top: 15),
                        height:15,
                        width: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: isPaytm==true?Colors.blue:Colors.grey,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Container(
                          height:10,
                          width: 10,
                          margin: EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                              color: isPaytm==true?Colors.blue:Colors.grey[300],
                              shape: BoxShape.circle
                          ),


                        ),
                      ),

                      onTap: () {
                        setState(() {
                          isPaytm=true;
                          isCanara=false;
                          isSBI=false;
                        });
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Add Another Card',
                        style: TextStyle(fontSize: 14.0, color: Colors.black87),
                      ),
                      subtitle: Text("Whenever Wallet Balance runs low",style: TextStyle(fontSize: 12.0)),
                      leading: Icon(
                        Icons.add,
                        size: 25.0,
                        color:  Colors.black,
                      ),

                      onTap: () {

                        setState(() {
                          addCard=!addCard;
                        });
                      },
                    ),
                    addCard==true?Card(

                      color: Colors.grey[200],
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 170,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Card Number",style: TextStyle(fontSize: 12,color: Colors.grey[500]),),
                            Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                height: 50,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  // controller: nameController,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.green, width: 2.0),

                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.transparent, width: 2.0),

                                    ),
                                    focusedBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      borderSide:  BorderSide(color: Colors.transparent ),

                                  ),
                                  ),
                                  onChanged: (text) {
                                    setState(() {
                                      // UserName = text;
                                      //you can access nameController in its scope to get
                                      // the value of text entered as shown below
                                      //UserName = nameController.text;
                                    });
                                  },
                                )
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               Flexible(
                                 flex:4,
                                 child:  Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Expiry(MM/YY)",style: TextStyle(fontSize: 12,color: Colors.grey[500]),),
                                     Container(
                                         margin: EdgeInsets.only(top: 10,bottom: 10,right: 10),
                                         height: 50,
                                         child: TextField(
                                           keyboardType: TextInputType.number,
                                           // controller: nameController,
                                           decoration: InputDecoration(
                                             filled: true,
                                             fillColor: Colors.white,
                                             border: OutlineInputBorder(
                                               borderSide: const BorderSide(color: Colors.green, width: 2.0),

                                             ),
                                             enabledBorder: OutlineInputBorder(
                                               borderSide: const BorderSide(color: Colors.transparent, width: 2.0),

                                             ),
                                             focusedBorder: new OutlineInputBorder(
                                               borderRadius: new BorderRadius.circular(5.0),
                                               borderSide:  BorderSide(color: Colors.transparent ),

                                             ),
                                           ),
                                           onChanged: (text) {
                                             setState(() {
                                               // UserName = text;
                                               //you can access nameController in its scope to get
                                               // the value of text entered as shown below
                                               //UserName = nameController.text;
                                             });
                                           },
                                         )
                                     ),
                                   ],
                                 ),),
                                Flexible(
                                  flex:3,
                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("CVV",style: TextStyle(fontSize: 12,color: Colors.grey[500]),),
                                          Text("Help?",style: TextStyle(fontSize: 12,color: Colors.blue),),
                                        ],
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(top: 10,bottom: 10),
                                          height: 50,
                                          child: TextField(

                                            keyboardType: TextInputType.number,
                                            maxLength: 4,

                                            // controller: nameController,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.white,
                                              counterText: "",

                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(color: Colors.green, width: 2.0),

                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(color: Colors.transparent, width: 2.0),

                                              ),
                                              focusedBorder: new OutlineInputBorder(
                                                borderRadius: new BorderRadius.circular(5.0),
                                                borderSide:  BorderSide(color: Colors.transparent ),

                                              ),
                                            ),
                                            onChanged: (text) {
                                              setState(() {
                                                // UserName = text;
                                                //you can access nameController in its scope to get
                                                // the value of text entered as shown below
                                                //UserName = nameController.text;
                                              });
                                            },
                                          )
                                      ),
                                    ],
                                  ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ):Container(),

                    addCard==true?
                    Row(
                      children: <Widget>[



                        /** Checkbox Widget **/
                        Checkbox(
                          value: this.value,
                          onChanged: (bool value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ), //
                        Text(
                          'Save The Card future Payment ',
                          style: TextStyle(fontSize: 12.0),
                        ), //Text// Checkbox
                      ], //<Widget>[]
                    ):Container()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet:  Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10),
            textColor: Colors.black,
            color:Colors.blue,
            onPressed: () {

              // Navigator.of(context).push(new MaterialPageRoute(
              //     builder: (context) => PaymentDoneScreen()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock_outline,size: 20,color: Colors.white,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Proceed Securely",
                  style: TextStyle(
                      fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
