
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motomensajeria/src/screens/login/login_widgets/background.dart';
import 'package:motomensajeria/src/screens/login/login_widgets/boton_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    
    var _text='Cuidamos tus paquetes como nuestros';
    var _text2='Entregas garantizadas el mismo día';
    var _text3='La mejor tarifa dentro de la ciudad, contamos con seguro!!!';
    var _fondo= 'fondo1.jpg';
    var _fondo2= 'fondo2.jpg';
    var _fondo3= 'fondo3.jpg';

    
List<Widget> pageList=[
  BackGround(data: _text,fondo: _fondo, ),
  BackGround(data: _text2,fondo: _fondo2,),
  BackGround(data: _text3,fondo: _fondo3,),

];

double height = MediaQuery.of(context).size.height;

    return  Scaffold(
      backgroundColor: const Color(0xFFf6553f),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            fondo(pageList),
            frenteBotones(pageList, context)
           
           

            
          ],
        ),
      ),
      
    );
  }

  Center frenteBotones(List<Widget> pageList, BuildContext context) {
    return Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              Expanded(child: Container(width: double.infinity,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(pageList.length, (i) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentPageIndex == i
                            ? const Color(0xFFf6553f)
                            : Colors.white),
                  );
                }).toList(),
              ),
              BotonLogin(
                textBtn: 'Accede con tu email', 
                onPressed: (){Navigator.pushNamed(context, 'mail');},
                icon: FontAwesomeIcons.envelope, 
                avatarColor: const Color(0xFFf6553f),
                //color: Color(0xFFf6553f),                
                ),
                BotonLogin(
                textBtn: 'Accede con Google', 
                onPressed: (){Navigator.pushNamed(context, 'mail');},
                icon: FontAwesomeIcons.google,    
                avatarColor: const Color(0xff3b5998),             
                ),
                BotonLogin(
                textBtn: 'Accede con Facebook', 
                onPressed: (){Navigator.pushNamed(context, 'mail');}, 
                icon: FontAwesomeIcons.facebook,
                avatarColor:const Color(0xff4285F4),              
                ),
                const SizedBox(height: 10,),
            ],
          ),
        );
  }

  

  PageView fondo(List<Widget> pageList) {
    return PageView.builder(
            onPageChanged: (int index){
              setState(() {
                _currentPageIndex=index % (pageList.length);
                
              });
            },
            itemCount: 10000,
            itemBuilder: (context, index){
              return pageList[index % (pageList.length)];
            },
            );
  }
}
