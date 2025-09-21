
import 'package:flutter/cupertino.dart';

import '../../core/pages/home_screen/presentation/screen/home_page.dart';

class RouteHelper{
 static String homePage="/homePage";
  


  static Map<String,WidgetBuilder>getRoute(){
    return{
      RouteHelper.homePage:(context)=>HomePage(),

    };
  }
}