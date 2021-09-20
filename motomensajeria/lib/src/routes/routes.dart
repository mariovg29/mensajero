



// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:motomensajeria/src/screens/home/home_screen.dart';
import 'package:motomensajeria/src/screens/login/login_screen.dart';


Map<String,WidgetBuilder> getApplicationRoutes(){
  return  <String,WidgetBuilder>{
  '/'         : (BuildContext context)=> HomeScreen(),
  'login'     : (BuildContext context)=> LoginScreen(),
 

};
  
}

