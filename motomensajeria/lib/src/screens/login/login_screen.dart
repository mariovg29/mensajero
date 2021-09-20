
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motomensajeria/src/screens/login/login_widgets/login_form.dart';
import 'package:motomensajeria/src/screens/login/login_widgets/welcome.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
      
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            onTap: ()=>FocusScope.of(context).unfocus(),
               child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // ignore: prefer_const_literals_to_create_immutables
                    colors: [
                      Color(0xff73AFF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0XFF398AE5)
                    ],
                    stops: [0.1,0.4,0.7,0.9],
                  )
                ),
                
                  child: Column(
                   
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Welcome(),
                     // Expanded(child: Container(width: double.infinity,)),
                      LoginForm(),
                    ],
                  ),                
              ),
            
          ),
        ),
      ),
    );
  }
}