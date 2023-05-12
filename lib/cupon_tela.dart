import 'package:flutter/material.dart';

class CuponTela extends StatefulWidget {
  @override
  _CuponTelaState createState() => _CuponTelaState();
}

class _CuponTelaState extends State<CuponTela> {
  String cupom = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupon"),
      ),
      body: Center(
        child: SizedBox(
          width: 280.0,
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Cupom",
              hintStyle: const TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                const BorderSide(color: Colors.transparent, width: 0.0),
              ),
              filled: true,
              fillColor: Colors.white.withOpacity(0.3),
            ),
            onChanged: (value) {
              cupom = value;
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          // Do something with the cupom value
          if (cupom == "123456") {
            // Execute an action
            print("Cupon is valid!");
          } else {
            // Print an error message
            print("Cupon is invalid!");
          }
        },
      ),
    );
  }
}