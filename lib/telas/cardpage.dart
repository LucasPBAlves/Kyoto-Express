import 'package:flutter/material.dart';

class CartaoScreen extends StatefulWidget {
  const CartaoScreen({super.key});

  @override
  _CartaoScreenState createState() => _CartaoScreenState();
}

class _CartaoScreenState extends State<CartaoScreen> {
  // variáveis que armazenarão os dados do cartão
  String numeroCartao = '';
  String nomeCartao = '';
  String validadeCartao = '';
  String cvvCartao = '';
  String CPF = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/confirmacao.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(105.0),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16.0),
                    // entrada dos dados do cartão
                    const Text(
                      'Nome no cartão',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          nomeCartao = value;
                        });
                      },
                      keyboardType: TextInputType.name,
                    ),

                    const SizedBox(height: 16.0),

                    const Text(
                      'Número do cartão',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          numeroCartao = value;
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Validade',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          validadeCartao = value;
                        });
                      },
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'CVV',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          cvvCartao = value;
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(),
                    ),

                    const SizedBox(height: 16.0),

                    const Text(
                      'CPF do usuário',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          CPF = value;
                        });
                      },
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 16.0),
                    // botão para adicionar o cartão
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/LojaMainPage");
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.red,
                        backgroundColor: Colors.white,
                      ),
                      child: const Text('Adicionar Cartão'),
                    ),
                    const SizedBox(height: 16.0),
                    // botao adicionar cartão depois
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/LojaMainPage");
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.red,
                        backgroundColor: Colors.white,
                      ),
                      child: const Text('Adicionar cartao depois'),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
