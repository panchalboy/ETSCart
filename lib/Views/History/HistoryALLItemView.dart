import 'package:etscart/Utils/Color.dart';
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:flutter/material.dart';
import 'HistoryScreen.dart';

class HistoryALLItemView extends StatefulWidget {
  @override
  _HistoryALLItemViewState createState() => _HistoryALLItemViewState();
}

class _HistoryALLItemViewState extends State<HistoryALLItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Summary (${historyItemModel.length})"),
        backgroundColor:  Color(ConvertHexToColor().hexCode(ColorCode.hmpMiddlePartBg)),
      ),
      body: SafeArea(
        child:  ListView.builder(

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

    );
  }
}
