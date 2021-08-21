import 'package:etscart/Model/HistoryItemModel.dart';
import 'package:etscart/Model/HistoryModel.dart';
import 'package:etscart/Utils/Color.dart';
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:etscart/Views/History/HistoryDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}
List<HistoryModel>historyModel=[
  HistoryModel("D Mart Shopping Center", "5475", "27 may 2021", "assets/images/parleg.png", "Parle G Biscuit 200g", "assets/images/parleg.png", "Parle G Biscuit 200g"),
  HistoryModel("D Mart Shopping Center", "5475", "27 may 2021", "assets/images/parleg.png", "Parle G Biscuit 200g", "assets/images/parleg.png", "Parle G Biscuit 200g"),
  HistoryModel("D Mart Shopping Center", "5475", "27 may 2021", "assets/images/parleg.png", "Parle G Biscuit 200g", "assets/images/parleg.png", "Parle G Biscuit 200g"),
  HistoryModel("D Mart Shopping Center", "5475", "27 may 2021", "assets/images/parleg.png", "Parle G Biscuit 200g", "assets/images/parleg.png", "Parle G Biscuit 200g"),
  HistoryModel("D Mart Shopping Center", "5475", "27 may 2021", "assets/images/parleg.png", "Parle G Biscuit 200g", "assets/images/parleg.png", "Parle G Biscuit 200g"),
  HistoryModel("D Mart Shopping Center", "5475", "27 may 2021", "assets/images/parleg.png", "Parle G Biscuit 200g", "assets/images/parleg.png", "Parle G Biscuit 200g"),
];
List<HistoryItemModel>historyItemModel=[
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
  HistoryItemModel("assets/images/parleg.png", "Parle G Biscuit 200g",200,1),
];
class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(ConvertHexToColor().hexCode(ColorCode.hmpMiddlePartBg)),
        title: Text("History"),
      ),
      body: SafeArea(
        child:
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: historyModel.length,
                    itemBuilder: (BuildContext context,int index){
                      return  Container(
                        margin: EdgeInsets.all(10),
                        height: 300,
                        child: Card(
                          elevation: 2,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Oder Status",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),),
                                      Text("Oder Total(${historyItemModel.length})",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(historyModel[index].shopName,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                      Text("\u20B9${historyModel[index].price}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),

                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Shop On ${historyModel[index].date}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),),
                                Divider(),
                                Expanded(
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                      itemCount: historyItemModel.length,
                                      itemBuilder:  (BuildContext context,int index){
                                        return Column(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(historyItemModel[index].imageProduct,width: 50,height: 50,),
                                                SizedBox(width: 15,),
                                                Text(historyItemModel[index].ProductName),
                                              ],
                                            )
                                          ],
                                        );
                                      }
                                      ),
                                ),
                                Divider(),

                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 5),
                                      height: 1,
                                      width: MediaQuery.of(context).size.width*0.30,
                                      color: Colors.black26,
                                    ),
                                    Text("+${historyItemModel.length-2} item more",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w200),),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 5),
                                      height: 1,
                                      width: MediaQuery.of(context).size.width*0.32,
                                      color: Colors.black26,
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
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
                                      "View Details",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })

      ),
    );
  }
}
