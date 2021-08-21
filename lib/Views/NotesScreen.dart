import 'dart:core';
import 'package:intl/intl.dart';
import 'package:etscart/Model/NotesModel.dart';
import 'package:etscart/Model/NotesOperation.dart';
import 'package:etscart/Utils/Color.dart';
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:etscart/Views/AddNotesScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(create: (context)=>NotesOperation(),
    child: MaterialApp(
      home: NotesHomeScreen(),
    ),
    );
  }


  }

class NotesHomeScreen  extends StatefulWidget {
  @override
  _NotesHomeScreenState createState() => _NotesHomeScreenState();
}
String formatted;
int _value=1;

class _NotesHomeScreenState extends State<NotesHomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    dateFoment();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNotesScreen()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(ConvertHexToColor().hexCode(ColorCode.hmpFloatingBtn)),
      ),
      
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,top: 20),
              child: Text("Notes",style: TextStyle(fontSize: 40),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.cloud_done_outlined,
                  size: 20,),
                  Text("All notes have been synchronized",style: TextStyle(fontSize: 12),),
                  Text("Manage cloud storage",style: TextStyle(fontSize: 12,color: Color(ConvertHexToColor().hexCode(ColorCode.hmpFloatingBtn))),),
                ],
              ),
            ),
            SizedBox (height:50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.search,
                    size: 30,),
                  SizedBox(width: 10,),
                  // _NomalPopMenu(),
                ],
              ),
            ),

            Expanded(
              child: Consumer<NotesOperation>(
                builder: (context,NotesOperation data,child){
                  return
                    ListView.builder(
                      itemCount: data.getNotes.length,
                      itemBuilder: (context,index){
                        return  Container(
                          margin: EdgeInsets.all(15),
                          padding: EdgeInsets.only(top: 15,left: 15,bottom: 5),

                          decoration: BoxDecoration(
                              color: Color(ConvertHexToColor().hexCode(ColorCode.backgroundColors)),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.delete_outline_outlined,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                            setState(() {
                                              data.getNotes.removeAt(index);
                                            });
                                    },
                                  ),

                                ],
                              ),
                              Text(data.getNotes[index].title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),
                              Text(data.getNotes[index].discription,style: TextStyle(fontSize: 16),),
                              SizedBox(height: 10,),
                              Text(formatted.toString(),style: TextStyle(fontSize: 10),),

                            ],
                          ),
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _NomalPopMenu() {
    return new PopupMenuButton<int>(
        itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
          new PopupMenuItem<int>(
              value: 1, child: new Text('Home')),
          new PopupMenuItem<int>(
              value: 2, child: new Text('My order')),
          new PopupMenuItem<int>(
              value: 3, child: new Text('My list')),
          new PopupMenuItem<int>(
              value: 4, child: new Text('All offers')),
          new PopupMenuItem<int>(
              value: 4, child: new Text('Customer Service')),
          new PopupMenuItem<int>(
              value: 4, child: new Text('Terms and conditions')),
          new PopupMenuItem<int>(
              value: 4, child: new Text('Policy'))
        ],
        onSelected: (int value) {
          setState(() { _value = value; });
        });
  }

  void dateFoment() {
    final DateTime now = DateTime.now();
    final DateFormat format = DateFormat('MMM dd, yyyy');
    formatted  = format.format(now);
  }
}




