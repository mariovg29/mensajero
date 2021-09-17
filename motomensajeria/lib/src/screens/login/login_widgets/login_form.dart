import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({ Key? key }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
       

    bool _rememberme=false;

    var textStyleLogin = TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,

          );
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
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
            Container(         
              
              child: Row(
                children: <Widget>[
                Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.white),
                    child: Checkbox(
                      value: _rememberme, 
                      checkColor: Colors.green,
                      activeColor: Colors.green,
                      onChanged: (bool? value){
                       setState((){    
                         print('hola');                    
                         value=_rememberme;
                       });
                      
                      },
                      ),
                  ),
                  Text('Recuerdame', style: TextStyle(color: Colors.white),),
                  Expanded(child: Container(height: 20,)),
                  ElevatedButton(
                   
                    onPressed: ()=>print('Boton presionado'),
                    child: Text('Olvidé mi contraseña', style: TextStyle(color: Colors.white),),
                  ),
                  


                ],
              ),
            ),
            
                       
            SizedBox(child: Container(height: 15),),
            _buildotonesRedes(),
           
                      
          ],
          
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
              height: 50,
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white, ),
                
                 decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(Icons.email,color: Colors.white,),
                  hintText: "Ingresa tu E-mail"
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
              height: 50,
              child: TextField(
                
                 obscureText: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(Icons.lock ,color: Colors.white,),
                  hintText: "Ingresa tu contraseña",  
                )
              ),
              
            )
           
            ],

            
          );
  }

  Widget _buildotonesRedes(){
    return Row(
      
       mainAxisAlignment: MainAxisAlignment.center,    
      children: [
        FloatingActionButton(
          child: Icon(FontAwesomeIcons.google, color: Colors.white),
         
          backgroundColor: Color(0xff4285F4),
          onPressed: null
          ),
          SizedBox(child: Container(width: 50),),
          FloatingActionButton(
          child: Icon(FontAwesomeIcons.facebook,color: Colors.white, ),
         
          backgroundColor: Color(0xff3b5998),
          onPressed: null
          )

      ],
    );
    
  }
}
