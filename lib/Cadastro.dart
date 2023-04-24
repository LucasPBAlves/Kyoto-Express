import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Cadastro.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(height: 150.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        labelText: 'Nome',
                        labelStyle: TextStyle(color: Colors.white),
                        errorStyle: TextStyle(color: Colors.white),
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Por favor, insira um nome';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        errorStyle: TextStyle(color: Colors.white),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira um email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        labelText: 'Telefone',
                        labelStyle: TextStyle(color: Colors.white),
                        errorStyle: TextStyle(color: Colors.white),
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Por favor, insira um número de telefone';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        labelText: 'CPF',
                        labelStyle: TextStyle(color: Colors.white),
                        errorStyle: TextStyle(color: Colors.white),
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Por favor, insira um CPF';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        labelText: 'Endereço',
                        labelStyle: TextStyle(color: Colors.white),
                        errorStyle: TextStyle(color: Colors.white),
                      ),

                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.white),
                        errorStyle: TextStyle(color: Colors.white),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Por favor, insira uma senha';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),

                    const SizedBox(height: 20.0),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Ações a serem executadas quando o formulário for validado
                        }

                      },
                      style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: const Text('Próximo'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
