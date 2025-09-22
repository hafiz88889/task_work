
import 'package:flutter/cupertino.dart';

import '../../core/pages/bottom_nav/bottom_nav.dart';
import '../../core/pages/home_screen/presentation/screen/home_page.dart';
import '../../core/pages/sign_up_screen/sign_up_page.dart';
import '../../core/pages/sound_screen/presentation/screen/specific_sound_page.dart';

class RouteHelper{
 static String bottomNav="/bottomNav";
 static String specificSoundPage="/specificSoundPage";
 static String signUpPage="/signUpPage";



  static Map<String,WidgetBuilder>getRoute(){
    return{
      RouteHelper.bottomNav:(context)=>BottomNav(),
      RouteHelper.specificSoundPage:(context)=>SpecificSoundPage(),
      RouteHelper.signUpPage:(context)=>SignUpPage(),

    };
  }
}