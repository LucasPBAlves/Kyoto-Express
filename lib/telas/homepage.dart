import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../cartmodel.dart';
import 'cardpage.dart';
import 'dart:math' as math;


class LojaMainPage extends StatefulWidget {
  @override
  _LojaMainPageState createState() => _LojaMainPageState();
}

class _LojaMainPageState extends State<LojaMainPage> {
  get padding => null;

  List<Product> _products = [
    Product(
        id: 1,
        title: "Sashimi (5)",
        price: 25.00,
        imgUrl: "https://img.icons8.com/external-tulpahn-flat-tulpahn/64/null/external-sashimi-japanese-food-tulpahn-flat-tulpahn.png",
        qty: 1),
    Product(
        id: 2,
        title: "Nigiri (8)",
        price: 40.00,
        imgUrl: "https://img.icons8.com/external-tulpahn-flat-tulpahn/64/null/external-sushi-japanese-food-tulpahn-flat-tulpahn.png",
        qty: 1),
    Product(
        id: 3,
        title: "Ramen",
        price: 35.00,
        imgUrl: "https://img.icons8.com/external-tulpahn-flat-tulpahn/64/null/external-ramen-japanese-food-tulpahn-flat-tulpahn.png",
        qty: 1),
    Product(
        id: 4,
        title: "Hot Rolls (6)",
        price: 50.00,
        imgUrl: "https://img.icons8.com/external-tulpahn-flat-tulpahn/64/null/external-sushi-roll-japanese-food-tulpahn-flat-tulpahn.png",
        qty: 1),
    Product(
        id: 5,
        title: "Tempura (2)",
        price: 20.0,
        imgUrl: "https://img.icons8.com/external-tulpahn-flat-tulpahn/64/null/external-tempura-japanese-food-tulpahn-flat-tulpahn.png",
        qty: 1),
    Product(
        id: 6,
        title: "Temaki",
        price: 30.0,
        imgUrl: "https://img.icons8.com/external-tulpahn-flat-tulpahn/64/null/external-sushi-roll-japanese-food-tulpahn-flat-tulpahn-1.png",
        qty: 1),
  ];



  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFede6dd),
      key: _scaffoldKey,

      //Barra
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: 16.0),
          icon: Icon(Icons.menu, color: Color(0xFF202020)),

          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Color(0xFF202020)),
              onPressed: () {
                Navigator.pushNamed(context, '/Carrinho');
              },
            ),
          ),
        ],
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, color: Color(0xFF202020)),
            SizedBox(width: 8),
            Text('Localização', style: TextStyle(color: Color(0xFF202020))),
          ],
        ),
      ),

      //Menu
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(


              accountName: Text('Nome do Usuário'),
              accountEmail: Text('email@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0x202020).withOpacity(0.5),
                child: Icon(Icons.person, color: Color(0xFFede6dd), size: 40),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFB22124),

                //border: Border(top: BorderSide.none),
              ),

            ),

            Expanded(
              child: ListView(

                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey),
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.shopping_bag),
                      title: Text('Pedidos'),
                      onTap: () {
                        // ação quando clicar em Pedidos
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.payment),
                      title: Text('Pagamento'),
                      onTap: () {
                        // ação quando clicar em Pagamento
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.local_offer),
                      title: Text('Cupons'),
                      onTap: () {
                        // ação quando clicar em Cupons
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.card_giftcard),
                      title: Text('Fidelidade'),
                      onTap: () {
                        // ação quando clicar em Fidelidade
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text('Favoritos'),
                      onTap: () {
                        // ação quando clicar em Favoritos
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.chat),
                      title: Text('Chat'),
                      onTap: () {
                        // ação quando clicar em Chat
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Ajuda'),
              onTap: () {
                // ação quando clicar em Ajuda
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {
                // ação quando clicar em Configurações
              },
            ),
          ],
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25.0),
            //Barra de promoções
            InkWell(
              onTap: () {
                // Ação quando a caixa for clicada
              },
              child: Container(
                width: 330,
                height: 160,

                decoration: BoxDecoration(
                  color: Color(0xFFb22124),
                  borderRadius: BorderRadius.circular(10),
                  /*
                  image: DecorationImage(
                    image: AssetImage('caminho/para/imagem.jpg'),
                    fit: BoxFit.cover,
                  ),
                   */
                ),
                child: Center(
                    child: Text(
                      'Promoções',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
              ),
            ),

            SizedBox(height: 15.0),

            //Barra de Pesquisa
            Container(
              padding: EdgeInsets.only(top:20.0, right:25.0, left:25.0, bottom: 20.0),

              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.1),
                  hintText: 'Pesquisar',
                  hintStyle: TextStyle(color: Color(0xFF202020)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search, color: Color(0xFF202020)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),

            //Botões de Categoria
            Column(
          children: [

            SizedBox(height: 15.0),
            // Barra de Categorias

            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                InkWell(
                  onTap: () {
                    // Ação quando o botão for clicado
                  },
                  child: Container(

                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      border: Border.all(

                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Categoria 1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Ação quando o botão for clicado
                  },
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Categoria 2',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Ação quando o botão for clicado
                  },
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Categoria 3',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Ação quando o botão for clicado
                  },
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Categoria 4',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),

            // Coloque aqui o conteúdo da sua página

          ],
        ),

            //Carroussel
            InkWell(
              onTap: () {
                // Ação quando a caixa for clicada
              },
              child: Container(
                width: 330,
                height: 330,

                decoration: BoxDecoration(
                  color: Color(0xFFb22124),
                  borderRadius: BorderRadius.circular(10),
                  /*
                  image: DecorationImage(
                    image: AssetImage('caminho/para/imagem.jpg'),
                    fit: BoxFit.cover,
                  ),
                   */
                ),
                child: GridView.builder(
                  padding: EdgeInsets.all(8.0),
                  itemCount: _products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.8),
                  itemBuilder: (context, index){
                    return ScopedModelDescendant<CartModel>(
                        builder: (context, child, model) {
                          return Card( child: Column( children: <Widget>[
                            Image.network(_products[index].imgUrl, height: 100, width: 100,),
                            Text(_products[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("R\$"+_products[index].price.toString()),
                            TextButton(
                                child: Text("Comprar"),
                                onPressed: () => model.addProduct(_products[index]))
                          ]));
                        });
                  },
                ),
              ),
            ),





            // Coloque aqui o conteúdo da sua página





          ],
        ),
      ),
    );
  }
}

