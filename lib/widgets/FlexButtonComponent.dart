import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zartek_test/View/AppTheme/AppColors.dart';

class FlexButtonComponent extends StatelessWidget {
  String image;
  final void Function() onClick;
  final String title;
  final Color btnColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;

  FlexButtonComponent(this.title, this.onClick,
      {this.backgroundColor = AppColors.PRIMARY,
        this.btnColor,
        this.image,
      this.padding = const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      this.textStyle = const TextStyle(
          color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400)});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      color: backgroundColor,
      padding: EdgeInsets.only(left: 20,right: 20),
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(shape: StadiumBorder(),primary:btnColor ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
//            Visibility(
//
//              child: Image.asset(
//              image,
//                height: 35,
//                width: 35,
//              ),
//            ),

            Text(
              title,
              style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)
                  .merge(textStyle),
            ),

            Container()
          ],
        ),
        onPressed: this.onClick,
      ),
    );
  }
}
