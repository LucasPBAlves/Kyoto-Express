import 'package:flutter/material.dart';
import 'Login.dart';
import 'Cadastro.dart';
import 'Loja.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    title: 'Kyoto Express',
    initialRoute: "/Home",
    routes: {
      "/Home": (context) => Home(),
      "/login": (context) => LoginPage(),
      "/LojaMainPage": (context) => LojaMainPage(),
      "/Cadastro": (context) => CadastroPage(),
    },
  ));
}

class Home extends StatelessWidget {
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
