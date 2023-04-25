import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  bool _isLoginConfirmed = false;
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 70.0),
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                width: 280.0,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                width: 280.0,
                child: TextField(
                  obscureText: true,
                  controller: _passwordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Senha",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              GestureDetector(
                onTap: () {
                  // Navegação para a tela de recuperação de senha
                },
                child: Text(
                  "Esqueceu a senha? Clique aqui.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 45.0),
                    child: Checkbox(
                      value: _rememberMe,
                      fillColor: MaterialStateProperty.all<Color>(Colors.white),
                      checkColor: Color.fromRGBO(178,33,36, 1),
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Lembrar de mim.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              MaterialButton(
                onPressed: () {
                  if (_passwordController.text == "1234") {
                    setState(() {
                      _isLoginConfirmed = true;
                    }

                    );


                    Navigator.pushNamed(context, "/LojaMainPage");
                  }
                  else{
                    setState(() {
                      _isLoginConfirmed = false;
                    });
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                            title: Text("Senha incorreta"),
                            content: Text("Senha incorreta. Tente Novamente."),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("Ok"),
                              )
                            ]
                        )
                    );
                  }
                },

                color: Colors.white,
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


