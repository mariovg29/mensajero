import 'package:flutter/material.dart';

class BotonLogin extends StatelessWidget {

  final String textBtn;
  final Function onPressed;
  final Color btncolor;
  final IconData icon;
  final Color? avatarColor;
  
  const BotonLogin({
    Key? key, 
    required this.textBtn,  
    required this.onPressed, 
    this.btncolor=Colors.white,
    this.icon=Icons.arrow_downward, 
    this.avatarColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    
    
    var textStyle2 = const TextStyle(
       color: Color(0xff35425e),
       letterSpacing: 1.5,
       fontSize: 15,
       fontWeight: FontWeight.bold,
       fontFamily: 'Opensans'
       );

  final ButtonStyle style =
  ButtonStyle(
    
    backgroundColor: MaterialStateProperty.all<Color>(btncolor),
    
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(            
      borderRadius: BorderRadius.circular(18.0),   
      
    )));                         

    return 
        Container(
          
          margin: const EdgeInsets.only(top:15.0),
          width: 300,
          height: 40,
          child: Center(
            child: ElevatedButton(
              onPressed: (){
                
                onPressed();
              },
              style: style,                
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: avatarColor,
                    radius: 40,
                    child: Icon(icon, 
                    color: Colors.white,                 
                    size: 30,
                    ),
                  ),
                  Text( textBtn,
                  style: textStyle2,
                  ),
                ],

              ),
            ),
          )
        );
      
  }
}
