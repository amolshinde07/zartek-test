import 'dart:convert';
import 'package:flutter/material.dart';


// import 'package:provider/provider.dart';
class MainDrawer extends StatefulWidget {
  final Function onTap;

  const MainDrawer({Key key, this.onTap}) : super(key: key);
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  FontWeight _fontWeight = FontWeight.w600;
  double _fontSize = 14;
  bool isTap = false;
  List role=[];
  String version = "";
  int _tabIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: Drawer(child: listDrawerItems()),
    );
  }

  listDrawerItems() {
    return ListView(children: <Widget>[

      Container(
        height:200,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.green,
            border: Border.all(
              color: Colors.green,
            ),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0)),
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(child: Text("hi"),radius: 40,),
            SizedBox(height: 10,),
            Text("fds"),
            SizedBox(height: 10,),
            Text("ids:410"),
          ],
        ),
      ),
      SizedBox.shrink(),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text(
          "Logout",
          style: TextStyle(fontWeight: _fontWeight, fontSize: _fontSize),
        ),
        onTap: () {
//          Logout().logOut(context);
        },
        trailing: Icon(Icons.chevron_right),
      ),




    ]);
  }
}