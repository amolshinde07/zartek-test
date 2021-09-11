import 'package:flutter/material.dart';
import 'package:zartek_test/screens/homepage.dart';
import 'package:zartek_test/utils/images.dart';
import 'package:zartek_test/view/AppTheme/AppColors.dart';
import 'package:zartek_test/widgets/FlexButtonComponent.dart';

class OrderSummary extends StatefulWidget {
  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        FlexButtonComponent(
          "Place Order",
          () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage()));
//              Get.offAndToNamed(AppLevelConstant.homeRoute);
          },
          textStyle: TextStyle(color: AppColors.PRIMARY),
          backgroundColor: AppColors.PRIMARY,
          btnColor: AppColors.DARKGREEN,
        ),
      ],
      appBar: AppBar(
        backgroundColor: AppColors.PRIMARY,
        title: Text(
          "Order Summary",
          style: TextStyle(color: AppColors.GREY),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.GREY,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 25),
          child: Column(
            children: [
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: AppColors.DARKGREEN,
                child: Center(
                  child: Text(
                    "2 Dishes - 2 Items",
                    style: TextStyle(color: AppColors.PRIMARY, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return Container(
                      padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.add_circle_outlined),
                              SizedBox(width: 5,),
                              Text("Gobi manchurian",style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: 5,),
                              SizedBox(width: 5,),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  width: 140,
//                                color: AppColors.PRIMARY,

                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: StadiumBorder(),primary:AppColors.DARKGREEN ),
                                    child: Row(
                                      children: <Widget>[
                                        IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),iconSize: 20,),
                                        Text(_itemCount.toString()),
                                         IconButton(icon: Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++),iconSize: 20,)
                                      ],
                                    ),
                                    onPressed: (){},
                                  ),
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("INR 20.00"),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text("INR 45.00     "),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("250 calories"),
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
          ),
        ),
      ),
    );
  }
}
