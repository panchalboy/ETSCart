import 'package:etscart/Utils/Color.dart';
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:etscart/Views/PaymentMethodeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EditProfileScreen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}



class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 0,
     backgroundColor: Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),
     title: Text("Profile"),
     actions: [

  ],
),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          padding: EdgeInsets.symmetric(vertical: 40),
                          color: Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: new AssetImage(
                                                      "assets/images/profile.png")))),

                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Harshit panchal",style: TextStyle(color: Colors.white),),
                                      Text("harshitpanchal06@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 0,vertical: 5),
                                        height: 30,
                                       width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                      ),
                                        child: Center(child: Text("Verified",style: TextStyle(color: Colors.white),)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // ListTile(
                        //   title: Text(
                        //     'My Oder',
                        //     style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        //   ),
                        //   leading: Icon(
                        //     Icons.shopping_bag,
                        //     size: 25.0,
                        //     color:  Colors.black,
                        //   ),
                        //   trailing: Icon(
                        //     Icons.arrow_forward_ios_outlined
                        //   ),
                        //   onTap: () {
                        //
                        //   },
                        // ),
                        // Divider(),
                        ListTile(
                          title: Text(
                            'My Account',
                            style: TextStyle(fontSize: 16.0, color: Colors.black87),
                          ),
                          leading: Icon(
                            Icons.person,
                            size: 25.0,
                            color:  Colors.black,
                          ),
                          trailing: Icon(
                              Icons.arrow_forward_ios_outlined
                          ),
                          onTap: () {
                            print("click");
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => EditProfileScreen())
                            );
                          },
                        ),
                        Divider(),
                        // ListTile(
                        //   title: Text(
                        //     'Shipping Address',
                        //     style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        //   ),
                        //   leading: Icon(
                        //     Icons.location_on,
                        //     size: 25.0,
                        //     color:  Color(ConvertHexToColor().hexCode(ColorCode.hmpFloatingBtn)),
                        //   ),
                        //   trailing: Icon(
                        //       Icons.arrow_forward_ios_outlined
                        //   ),
                        //   onTap: () {
                        //
                        //   },
                        // ),
                        // Divider(),
                        ListTile(
                          title: Text(
                            'Payment Method',
                            style: TextStyle(fontSize: 16.0, color: Colors.black87),
                          ),
                          leading: Icon(
                            Icons.payment,
                            size: 25.0,
                            color:  Colors.black,
                          ),
                          trailing: Icon(
                              Icons.arrow_forward_ios_outlined
                          ),
                          onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => PaymentMethodeScreen())
                            );
                          },
                        ),
                        Divider(),
                        // ListTile(
                        //   title: Text(
                        //     'Setting',
                        //     style: TextStyle(fontSize: 16.0, color: Colors.black87),
                        //   ),
                        //   leading: Icon(
                        //     Icons.settings,
                        //     size: 25.0,
                        //     color: Color(ConvertHexToColor().hexCode(ColorCode.hmpFloatingBtn)),
                        //   ),
                        //   trailing: Icon(
                        //       Icons.arrow_forward_ios_outlined
                        //   ),
                        //   onTap: () {
                        //
                        //   },
                        // ),
                        // Divider(),
                        ListTile(
                          title: Text(
                            'LogOut',
                            style: TextStyle(fontSize: 16.0, color: Colors.black87),
                          ),
                          leading: Icon(
                            Icons.logout,
                            size: 25.0,
                            color:  Colors.black,
                          ),
                          trailing: Icon(
                              Icons.arrow_forward_ios_outlined
                          ),
                          onTap: () {

                          },
                        ),
                        Divider(),
                      ],
                    ),
                  ),

                ],
              ),

            ],
          ),

        ),
      ),
    );
  }
}
