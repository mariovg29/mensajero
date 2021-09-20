// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({ Key? key }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {


final ButtonStyle style =
 ButtonStyle(
   backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
            
      borderRadius: BorderRadius.circular(18.0),
      
    )));
  


  @override
  Widget build(BuildContext context) {
       

    

    var textStyleLogin = TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,

          );
    return 
      Expanded(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
           // color: Colors.blue,
           // height: 200,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Ingresa',
                style: textStyleLogin,
                ),
                _buildEmail(),
                _buildPassword(),
                _forgotten(),            
                _buttonAcceder(),              
                SizedBox(child: Container(height: 5),),           
                _buildotonesRedes(),
                _registrobtn(),
                
                
               
                          
              ],
              
            ),      
          ),
        ),
      );
    
  }

  Widget _buildEmail(){
    return  Column(            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:5.0),
            Text('Email',
            style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 5,),
            Container(              
              alignment: Alignment.centerLeft,
              height: 40,
              child: TextField(
                cursorColor: Colors.white,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white, ),
                
                 decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(Icons.email,color: Colors.white,),
                  hintText: "Ingresa tu E-mail",
                  hintStyle: TextStyle(color: Colors.white)
                )
              ),
              
            )
           
            ],
            
    );
    
  }

  Widget _buildPassword(){
    return  Column(            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:5.0),
            Text('Contraseña',
            style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 5,),
            Container(              
              alignment: Alignment.centerLeft,
              height: 40,
              child: TextField(
                cursorColor: Colors.white,
                 obscureText: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(Icons.lock ,color: Colors.white,),
                  hintText: "Ingresa tu contraseña", 
                  hintStyle: TextStyle(color: Colors.white) 
                )
              ),
              
            )
           
            ],

            
          );
  }

  Widget _forgotten(){
    return Container(   
      padding: EdgeInsets.symmetric(vertical: 5),
       child: Row(
       children: <Widget>[
         Expanded(child: Container(height: 20,)),
         TextButton(           
           onPressed: ()=>print('Boton presionado'),
           child: Text('Olvidé mi contraseña', 
           style: TextStyle(
             color: Colors.white),),
            ),

            
     ],
        ),
      );
  }

  
  Widget _buttonAcceder(){
    return Container( 
                          
              width: double.infinity,
              child: ElevatedButton(
                style: style,                
                child: Text('Acceder',
                 style: TextStyle(
                   
                   letterSpacing: 1.5,
                   color: Color(0xff527DAA),
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                   fontFamily: 'Opensans'
                   ),
                   ),
                onPressed: (){},
              ),

            );
  }
  
  Widget _buildotonesRedes(){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 14),
          height: 15,
          child: Text('Accede con tus redes sociales',
           style: TextStyle(
             color: Colors.white,
            
             ),
         ),

        ),
        Column(
          children: [
            Row(   
                       
               mainAxisAlignment: MainAxisAlignment.center,    
              children: [
                
                FloatingActionButton(
                  
                  child: Icon(FontAwesomeIcons.google, color: Colors.white),
                 
                  backgroundColor: Color(0xff4285F4),
                  onPressed: null
                  ),
                  SizedBox(child: Container(width: 40),),
                  FloatingActionButton(
                  child: Icon(FontAwesomeIcons.facebook,color: Colors.white, ),
                 
                  backgroundColor: Color(0xff3b5998),
                  onPressed: null
                  
                  ),

              ],
              
            ),SizedBox(child: Container(height: 10,),),
          ],
        ),
      ],
    );
    
  }
  Widget _registrobtn(){
    return GestureDetector(
              onTap: ()=>print('Registro presionado'),
              child: RichText(text:TextSpan(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  TextSpan(
                    text: '¿Aun no tienes cuenta?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      )
                  ),
                  TextSpan(
                    text: ' Registrate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      )
                  ),
                ]
              ),),
            );
  }
}
