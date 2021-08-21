import 'dart:io';
import 'package:etscart/Utils/Color.dart';
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  DateTime StartDate = DateTime.now();
  var selectedDate = DateTime.now();
  String localStartDate ="22/04/2021";
  static var dateParse;

  File _image;
  final picker = ImagePicker();
  String reasonValue = 'Male';
  List<ListItem> _dropdownItems = [
    ListItem(1, "Male"),
    ListItem(2, "Female"),
    ListItem(0, "other"),
  ];
  final List<String> Gender = ['Male',
    'Female',
    'other',

  ];
  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _itemSelected;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _itemSelected = _dropdownMenuItems[1].value;

  }
  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),
        elevation: 0,
        title: Text('Edit Profile'),

      ),
      body: SafeArea(
        child: Container(
          // margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),
                  child: Column(
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            new Container(
                                width: 150.0,
                                height: 150.0,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image:_image==null?new AssetImage(
                                            "assets/images/profile.png"):
                                        FileImage(_image)

                                    )
                                )),
                            Positioned(
                                top: 90,
                                right: 5,
                                child: InkWell(
                                  onTap: (){
                                    showDialog(context: context, barrierDismissible: true , builder: (context)
                                    {
                                      Future.delayed(Duration(seconds: 4), () {
                                        Navigator.of(context).pop(true);
                                      });
                                      return AlertDialog(

                                        title: Text("Select"),

                                        content: Container(
                                          height: 50,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    getImageByCamara();
                                                  },
                                                  child: Text("Camera")),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  getImageByGallery();
                                                },
                                                child: Text("Gallery"),
                                              )

                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                    );
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                        Border.all(color: Colors.black)),
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  ),
                                ))
                          ],
                         
                        ),
                      ),

                      SizedBox(
                        height: 40,
                      ),


                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("User Information",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),)),
                      Row(

                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: MediaQuery.of(context).size.width*0.40,
                            child: TextField(
                              //  controller: nameController,
                              enabled: true,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.grey),
                                labelText: "First Name",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                              onChanged: (text) {
                                setState(() {
                                  //    UserName = text;
                                  //you can access nameController in its scope to get
                                  // the value of text entered as shown below
                                  //UserName = nameController.text;
                                });
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: MediaQuery.of(context).size.width*0.45,
                            child: TextField(
                              //  controller: nameController,
                              enabled: true,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.grey),
                                labelText: "LastName",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                              onChanged: (text) {
                                setState(() {

                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          enabled: true,
                          //  controller: nameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey),
                            labelText: "Email",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (text) {
                            setState(() {

                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          enabled: true,
                          //  controller: nameController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey),
                            labelText: "Phone",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),

                          ),

                          onChanged: (text) {
                            setState(() {

                            });
                          },
                        ),
                      ),

                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width,

                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text("Gender",style: TextStyle(color: Colors.grey[500]),)),
                              DropdownButton<String>(
                                  underline: SizedBox(),
                                  selectedItemBuilder:(_){

                                    return Gender.map((e) =>  Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(e,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
                                        textAlign: TextAlign.end,),
                                    ))
                                        .toList();

                                  },
                                  value: reasonValue,
                                  isExpanded: true,
                                  icon: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.transparent,
                                    child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                                  ),
                                  items: Gender.map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(
                                        value,
                                        style: TextStyle(color: Colors.black,fontSize: 15),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (_){
                                    setState(() {
                                      reasonValue = _;
                                    });
                                  }
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                height: 1,
                                color: Colors.grey[500],
                              )
                            ],
                          )
                      ),

                      Container(
                          margin: EdgeInsets.only(top: 5,left: 10),
                          child: Text("Address",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),)),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          enabled: true,
                          //  controller: nameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.location_on),
                            labelStyle: TextStyle(color: Colors.grey),
                            labelText: "Address",

                          ),
                          onChanged: (text) {
                            setState(() {

                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(10),
                            textColor: Colors.black,
                            color:Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),
                            onPressed: () {


                            },
                            child: Text(
                              "Save",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Future getImageByCamara() async {
      print("click");
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {

        print('imagessss===${_image}');
        _image = File(pickedFile.path);

      } else {

        print('No image selected.');
      }
    }
    );
  }

  Future getImageByGallery() async {

    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {

        print('imagessss===${_image}');
        _image = File(pickedFile.path);

      } else {

        print('No image selected.');
      }
    });
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
