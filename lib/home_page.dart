import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'login_page.dart';
import 'cadastro_tela.dart';
import 'loja_main.dart';
import 'cartao_add.dart';
import 'carrinho_tela.dart';
import 'carrinho_model.dart';
import 'verificacao_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(
    model: CartModel(),
  ));
}


class MyApp extends StatelessWidget{

  final CartModel model;

  const MyApp({Key? key, required this.model}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModel<CartModel>(
      model: model,
      child:MaterialApp(
        home: const Home(),
        title: 'Kyoto Express',
        initialRoute: "/Home",
        routes: {
          "/Home": (context) => const Home(),
          "/login": (context) => const LoginPage(),
          "/LojaMainPage": (context) => const LojaMainPage(),
          "/Cadastro": (context) => const CadastroPage(),
          '/Carrinho': (context) => const CartPage(),
          "/Verificar": (context) => const Verification(),
          "/Cartao": (context) => const CartaoScreen(),
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
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(237, 230, 221, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 48.0,
                      ),
                    ),
                    child: const Text(
                      'Fazer login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/Cadastro");
                    },
                    child: const Text(
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
