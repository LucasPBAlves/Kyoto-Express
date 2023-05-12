import 'package:flutter/material.dart';

class PagamentosTela extends StatefulWidget {
  @override
  _PagamentosTelaState createState() => _PagamentosTelaState();
}

class _PagamentosTelaState extends State<PagamentosTela> {
  String balance = "R\$ 100,00";
  List<String> paymentMethods = ["Credit Card", "Debit Card", "Bank Transfer"];
  List<String> transactionHistory = ["Transaction 1", "Transaction 2", "Transaction 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagamentos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            // Display balance
            Text(
              "Saldo: $balance",
              style: TextStyle(fontSize: 24.0),
            ),
            // Display payment methods
            SizedBox(
              height: 20.0,
            ),
            ListView.builder(
              itemCount: paymentMethods.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(paymentMethods[index]),
                );
              },
            ),
            // Display transaction history
            SizedBox(
              height: 20.0,
            ),
            ListView.builder(
              itemCount: transactionHistory.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(transactionHistory[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}