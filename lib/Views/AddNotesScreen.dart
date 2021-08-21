import 'package:etscart/Model/NotesOperation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNotesScreen extends StatefulWidget {
  @override
  _AddNotesScreenState createState() => _AddNotesScreenState();
}

class _AddNotesScreenState extends State<AddNotesScreen> {
  @override
  Widget build(BuildContext context) {

    String titleText;
    String descriptionText;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("NotesHolder",style: TextStyle(color: Colors.black),),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Provider.of<NotesOperation>(context,listen: false).addNewNotes(titleText, descriptionText);
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.check,
              color: Colors.black,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: (){
             // Navigator.pop(context);
            },
            icon: Icon(
              Icons.share,
              color: Colors.black,
              size: 20,
            ),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(

              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Title",
                helperStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
              ),
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              onChanged: (value){
                titleText=value;
              },
            ),
            Container(
              height: 1,
              color: Colors.black26,
            ),
            Expanded(
              child: TextField(

                maxLines: 10,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Description",
                    helperStyle: TextStyle(fontSize: 18,)
                ),
                style: TextStyle(fontSize: 18,),
                onChanged: (value){
                  descriptionText=value;
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
