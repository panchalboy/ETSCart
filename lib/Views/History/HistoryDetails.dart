import 'package:etscart/Utils/Color.dart';
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:etscart/Views/History/HistoryALLItemView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'HistoryScreen.dart';
class HistoryDetails extends StatefulWidget {
  @override
  _HistoryDetailsState createState() => _HistoryDetailsState();
}

class _HistoryDetailsState extends State<HistoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("History Details"),
            backgroundColor:  Color(ConvertHexToColor().hexCode(ColorCode.hmpMiddlePartBg)),
          ),
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("View Oder Details"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey[300])
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Oder Date",style: TextStyle(color: Colors.grey),),
                            Text("27-may-2021"),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Oder#",style: TextStyle(color: Colors.grey),),
                            Text("2757-5824952-2021"),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Invoice Number",style: TextStyle(color: Colors.grey),),
                            Text("2757-5824952-2021"),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Oder Total",style: TextStyle(color: Colors.grey),),
                            Text("\u20B92518.00"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Payment Information"),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey[300])
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Text("Payment Methode"),
                        Text("Net Banking",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Purchase Details"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey[300])
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Successful",style: TextStyle(color: Colors.green)),
                        Text("Net Banking",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Oder Summary(${historyItemModel.length})"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 336,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey[300])
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Container(
                          height: 300,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: historyItemModel.length,
                              itemBuilder:  (BuildContext context,int index){
                                return Column(
                                  children: [
                                    ListTile(
                                      leading: Image.asset(historyItemModel[index].imageProduct,width: 50,height: 50,),
                                      title:  Text(historyItemModel[index].ProductName,style: TextStyle(fontSize: 15),),
                                      subtitle:  Text("\u20B9${historyItemModel[index].price}",style: TextStyle(fontSize: 13)),
                                      trailing: Text("Qty:${historyItemModel[index].qty}",textAlign: TextAlign.end,),
                                    ),
                                   Container(
                                     height: 1,
                                     color: Colors.grey[300],
                                   )
                                  ],
                                );
                              }
                          ),
                        ),
                        InkWell(
                            onTap: (){
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => HistoryALLItemView()));
                            },
                            child: Text("View More Item",style: TextStyle(color: Colors.lightBlue),))
                      ],
                    ),
                  ),

                ],
              ),
            ),

        ),
      ),
      bottomSheet:  Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(10),
          textColor: Colors.black,
          color:Color(ConvertHexToColor().hexCode(ColorCode.hmpFloatingBtn)),
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => HistoryDetails()));
          },
          child: Text(
            "Download Invoice",
            style: TextStyle(
                fontSize: 15, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
