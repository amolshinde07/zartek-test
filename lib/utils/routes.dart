
import 'package:flutter/material.dart';
import 'package:zartek_test/screens/authentication.dart';
import 'package:zartek_test/screens/homepage.dart';
import 'package:zartek_test/utils/RouteConstant.dart';

class RouterService{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){

      case AppLevelConstant.homeRoute:
        return _NoAnimationMaterialPageRoute<dynamic>(builder: (_) => HomePage(), name: AppLevelConstant.homeRoute);
      case AppLevelConstant.loginRoute:
        return _NoAnimationMaterialPageRoute<dynamic>(builder: (_)=> AuthenticationScreen(), name: AppLevelConstant.loginRoute);

//      case AppLevelConstant.manageDispatchList:
//        return _NoAnimationMaterialPageRoute<dynamic>(builder: (_) => DispatchDetails() , name: AppLevelConstant.manageDispatchList, );

    }
  }
}

class _NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T>{
  _NoAnimationMaterialPageRoute({
    @required WidgetBuilder builder ,
    @required String name,
    bool maintainState=true,
    bool fullScreenDialog=false
  }):super(builder: builder, maintainState: maintainState , settings: RouteSettings(name: name), fullscreenDialog: fullScreenDialog);

  @override
  Widget buildTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) => child;

}