import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'telas/loginpage.dart';
import 'telas/signinpage.dart';
import 'telas/homepage.dart';
import 'telas/cardpage.dart';
import 'telas/cartpage.dart';
import 'cartmodel.dart';


void main() => runApp(MyApp(
  model: CartModel(),
));


class MyApp extends StatelessWidget{

  final CartModel model;

  const MyApp({Key? key, required this.model}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModel<CartModel>(
      model: model,
      child:MaterialApp(
        home: Home(),
        title: 'Kyoto Express',
        initialRoute: "/Home",
        routes: {
          "/Home": (context) => Home(),
          "/login": (context) => LoginPage(),
          "/LojaMainPage": (context) => LojaMainPage(),
          "/Cadastro": (context) => CadastroPage(),
          '/Carrinho': (context) => CartPage(),
          "/Verificar": (context) => Verification(),
          "/Cartao": (context) => CartaoScreen(),
        },
      ));
  }
}

class Home extends StatelessWidget {
  
    const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/Kyoto-Express.png',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Fazer login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(237, 230, 221, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 48.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/Cadastro");
                    },
                    child: Text(
                      'Não possui login?\n Cadastre-se.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
