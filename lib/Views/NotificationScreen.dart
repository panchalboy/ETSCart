import 'package:etscart/Model/NotificationModel.dart';
import 'package:etscart/Utils/Color.dart';
import 'package:etscart/Utils/ConvertColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

List<NotificationModel>notificationModel=[
    NotificationModel("Upto 50% of on Hyginene Essentials", "Add For Many Instance Food items", "assets/images/NotificationImage.jpg"),
    NotificationModel("Upto 50% of on Hyginene Essentials", "Add For Many Instance Food items", "assets/images/NotificationImage.jpg"),
    NotificationModel("Upto 50% of on Hyginene Essentials", "Add For Many Instance Food items", "assets/images/NotificationImage.jpg"),
    NotificationModel("Upto 50% of on Hyginene Essentials", "Add For Many Instance Food items", "assets/images/NotificationImage.jpg"),
    NotificationModel("Upto 50% of on Hyginene Essentials", "Add For Many Instance Food items", "assets/images/NotificationImage.jpg"),
    NotificationModel("Upto 50% of on Hyginene Essentials", "Add For Many Instance Food items", "assets/images/NotificationImage.jpg"),
];
class _NotificationScreenState extends State<NotificationScreen>  with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, length: list.length);
  }
  List<Widget> list = [
    Tab(
      child: Container(
        child: Text(
          "Fare Summury",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ),
    ),
    Tab(
      child: Container(
        child: Text(
          "Cancellation",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: DefaultTabController(
      length: list.length,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            color: Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text("Notification",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          backgroundColor: Color(ConvertHexToColor().hexCode(ColorCode.contanierOne)),
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Notify',
                ),
              ),
              Tab(
                child: Text(
                  'Rewords',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            NotifyTab(),
            FRewordsTab(),
          ],
        ),
      ),
    ),
    );
  }
  Widget NotifyTab() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: notificationModel.length,
              itemBuilder: (BuildContext context, int index){
                return  Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Card(

                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Text(notificationModel[index].title,style: TextStyle(fontSize: 17),)
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10,bottom: 5),
                            child: Text(notificationModel[index].subTitle,style: TextStyle(fontSize: 12,color: Colors.grey[500]),)),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 130.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover, image: AssetImage(notificationModel[index].image)
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
          ),
        ),

      ],
    );
  }
  Widget FRewordsTab() {
    return Center(
      child: Text("tab1"),
    );
  }
}
