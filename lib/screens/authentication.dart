import 'package:flutter/material.dart';
import 'package:zartek_test/screens/homepage.dart';
import 'package:zartek_test/utils/RouteConstant.dart';
import 'package:zartek_test/utils/images.dart';
import 'package:zartek_test/view/AppTheme/AppColors.dart';
import 'package:zartek_test/widgets/FlexButtonComponent.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final personNextToMe = 'That reminds me about the time when I was ten and our neighbor, her name was Mrs. Mable, and she said...';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.icFirebase
            ),
            FlexButtonComponent(
              "Google", (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
//              Get.offAndToNamed(AppLevelConstant.homeRoute);
            },
              image: Images.icGoogle ,
              textStyle: TextStyle(color: AppColors.PRIMARY),
              backgroundColor: AppColors.PRIMARY,
              btnColor:AppColors.BLUE ,

            ),
            SizedBox(
              height: 10,
            ),
            FlexButtonComponent(

              "Phone", (){

//              Get.offAndToNamed(AppLevelConstant.homeRoute);
            },
              image: Images.icPhone,
              textStyle: TextStyle(color: AppColors.PRIMARY),
              backgroundColor: AppColors.PRIMARY,
              btnColor:AppColors.GREEN ,

            ),
          Row(children: [
            Icon(Icons.airline_seat_legroom_reduced),
            Flexible(child: Text(personNextToMe,softWrap: true,)),
            Icon(Icons.airline_seat_legroom_reduced),
          ]);
          ],
        ),
      ),
    );
  }
}
