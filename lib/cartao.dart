import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Adicionar dados Cartão',
      home: CartaoScreen(),
    );
  }
}

class CartaoScreen extends StatefulWidget {
  const CartaoScreen({super.key});

  @override
  _CartaoScreenState createState() => _CartaoScreenState();
}

class _CartaoScreenState extends State<CartaoScreen> {
  // variáveis que armazenarão os dados do cartão
  String numeroCartao = '';
  String validadeCartao = '';
  String cvvCartao = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFFB22124),
        title: const Text('Dados do cartão'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/confirmacao.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                // entrada dos dados do cartão
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
                //   botão para adicionar o cartão
                ElevatedButton(
                  onPressed: () {
                    //lógica para adicionar o cartão
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
                    // lógica para o adicionar cartão depois
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
      ),
    );
  }
}
