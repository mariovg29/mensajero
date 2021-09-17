
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16/16,
      child: LayoutBuilder(
        builder: (_, constraints){
          return Container( 
           
            color: Color.fromRGBO(115, 175, 245, .1),     
        
        child: Stack(
          children:<Widget>[            
            
            //NUBES
            Positioned( 
               
              bottom: constraints.maxHeight*0,  
              left: constraints.maxWidth*.2, 
                
              child: SvgPicture.asset('assets/nubes.svg'),
               width: constraints.maxWidth*.6,
              
              ),
             //LINEA
            Positioned(
              top:constraints.maxHeight*0.32,
              child: Column(
                children: <Widget>[Container(
                  height: 3,
                  width: constraints.maxWidth,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 40,
                ),
                Text('¡Bienvenido!',               
                style: TextStyle(
                  color: Color(0xff0000ff),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  
                ),
                ),
                ],
              ),
            ),
           
              //MOTO
              Positioned(  
              bottom: constraints.maxHeight*.05,  
              left: constraints.maxWidth*.05,         
              child: SvgPicture.asset('assets/moto_delivery_woman.svg'),
              width: constraints.maxWidth*.4,
              height: 200,
              ),
              //GPS
              Positioned(  
              bottom: constraints.maxHeight*.1,  
              right: constraints.maxWidth*.05,         
              child: SvgPicture.asset('assets/gps.svg'),
              width: constraints.maxWidth*.30,
              height:constraints.maxWidth*.3,
              ),
               //MUJER
              Positioned(  
              bottom: constraints.maxHeight*.47,  
              left: constraints.maxWidth*.02,         
              child: SvgPicture.asset('assets/woman.svg'),
              width: constraints.maxWidth*.35,
              ),
              //SENTADO
              Positioned( 
               
              top: constraints.maxHeight*.08,  
              right: 10,         
              child: SvgPicture.asset('assets/sentado.svg'),
              width: constraints.maxWidth*.25,
              height: 150,
              ),
          
          ],
        ),
        
        );
        }
      )
        
      );
  }
}