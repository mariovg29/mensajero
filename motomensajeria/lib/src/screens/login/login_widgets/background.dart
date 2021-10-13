// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class BackGround extends StatefulWidget {
  
  final String data;
  final String fondo;
  

  const BackGround({Key? key, 
  required this.data, 
  required this.fondo, 
  }) : super(key: key);

  @override
  State<BackGround> createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
@override
  Widget build(BuildContext context) {

 var textStyle = TextStyle(
      color: Colors.white, 
      fontSize: 25,
      fontWeight: FontWeight.bold,
      );

     double height = MediaQuery.of(context).size.height;
   // var data = 'Cuidamos tus paquetes como si fueran nuestros';
    return Stack(
      children:[
        Container(          
        height: double.infinity,
        width: double.infinity,
        child: Image(
            image: AssetImage('assets/${widget.fondo}'
            ),
            fit: BoxFit.fill,
        ),
      ),
       Container(
         margin: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
         child: Column(
           children: [
             Expanded(
               child: Container(
                 width: double.infinity                 
                 ),
                 ),
                //  Container(
                //    height: height*.1,
                //    child: Row(
                //      mainAxisAlignment: MainAxisAlignment.center,
                //      // ignore: prefer_const_literals_to_create_immutables
                //      children: [
                //        Row(
                //          mainAxisAlignment: MainAxisAlignment.end,
                //          children: List.generate(3, (i) {  
                //            print(widget.currentPage);  
                //            return Container(
                //              margin: EdgeInsets.symmetric(horizontal: 5),
                //              width: 10,
                //              height: 10,
                //              decoration: BoxDecoration(
                //                shape: BoxShape.circle,
                //                color: widget.currentPage.toInt() == i
                //                ? Color(0xFFf6553f)
                //                : Colors.white),
                //         ); 
                     
                //   }).toList(),
                // ),
                
                      

                     
                //      ],
                //    ),

                //  ),
             Container(
              height: height*.32,
               width: double.infinity,
               child: Column(
                 children: [
                   Text(widget.data,
                   style: textStyle,textAlign: TextAlign.justify,
       ),
                 ],
               ),
             )
           ],
         )),
             
     
      ]
    );
  }
}