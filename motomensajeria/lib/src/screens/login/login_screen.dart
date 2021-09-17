
import 'package:flutter/material.dart';
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
      
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
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
            children: <Widget>[
              Welcome(),
              // Expanded(child: Container(width: double.infinity,)),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}