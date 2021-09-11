import 'package:flutter/material.dart';
import 'package:zartek_test/screens/ordersummary.dart';
import 'package:zartek_test/view/AppTheme/AppColors.dart';
import 'package:zartek_test/widgets/MainDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
      child:Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          actions: [IconButton(icon: Icon(Icons.shopping_cart,color:AppColors.GREY,),onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderSummary())),)],
          backgroundColor: AppColors.PRIMARY,
          bottom: TabBar(
            indicatorColor:AppColors.GREY,
            tabs: [
              Tab(child: Text("Salad and Soup",style: TextStyle(color:AppColors.GREY ),),),
              Tab(child: Text("From The Barnyard",style: TextStyle(color:AppColors.GREY ),))
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Flexible(
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.add_circle_outlined),
                                  SizedBox(width: 5,),
                                  Text("Gobi manchurian",style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),

                              Row(
                                children: [
                                  Text("15 Calories",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Container(color: Colors.blue,height: 25,width: 25,),
                                ],
                              )

                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text("INR 45.00     "),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text("French Spinach",style: TextStyle(color:AppColors.GREY ),),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ),
      )
    );


  }
}
