import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'carrinho_model.dart';



class LojaMainPage extends StatefulWidget {
  const LojaMainPage({super.key});

  @override
  LojaMainPageState createState() => LojaMainPageState();
}

class LojaMainPageState extends State<LojaMainPage> {
  get padding => null;

  final List<Product> _products = [
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
      backgroundColor: const Color(0xFFede6dd),
      key: _scaffoldKey,

      //Barra
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 16.0),
          icon: const Icon(Icons.menu, color: Color(0xFF202020)),

          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart_outlined, color: Color(0xFF202020)),
              onPressed: () {
                Navigator.pushNamed(context, '/Carrinho');
              },
            ),
          ),
        ],
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
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


              accountName: const Text('Nome do Usuário'),
              accountEmail: const Text('email@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: const Color(0x00202020).withOpacity(0.5),
                child: const Icon(Icons.person, color: Color(0xFFede6dd), size: 40),
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFB22124),

                //border: Border(top: BorderSide.none),
              ),

            ),

            Expanded(
              child: ListView(

                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey),
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.shopping_bag),
                      title: const Text('Pedidos'),
                      onTap: () {
                        // ação quando clicar em Pedidos
                      },
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.payment),
                      title: const Text('Pagamento'),
                      onTap: () {
                        // ação quando clicar em Pagamento
                      },
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.local_offer),
                      title: const Text('Cupons'),
                      onTap: () {
                        // ação quando clicar em Cupons
                      },
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.card_giftcard),
                      title: const Text('Fidelidade'),
                      onTap: () {
                        // ação quando clicar em Fidelidade
                      },
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.favorite),
                      title: const Text('Favoritos'),
                      onTap: () {
                        // ação quando clicar em Favoritos
                      },
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.chat),
                      title: const Text('Chat'),
                      onTap: () {
                        // ação quando clicar em Chat
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text('Ajuda'),
              onTap: () {
                // ação quando clicar em Ajuda
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
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
            const SizedBox(height: 25.0),
            //Barra de promoções
            InkWell(
              onTap: () {
                // Ação quando a caixa for clicada
              },
              child: Container(
                width: 330,
                height: 160,

                decoration: BoxDecoration(
                  color: const Color(0xFFb22124),
                  borderRadius: BorderRadius.circular(10),
                  /*
                  image: DecorationImage(
                    image: AssetImage('caminho/para/imagem.jpg'),
                    fit: BoxFit.cover,
                  ),
                   */
                ),
                child: const Center(
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

            const SizedBox(height: 15.0),

            //Barra de Pesquisa
            Container(
              padding: const EdgeInsets.only(top:20.0, right:25.0, left:25.0, bottom: 20.0),

              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.1),
                  hintText: 'Pesquisar',
                  hintStyle: const TextStyle(color: Color(0xFF202020)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search, color: Color(0xFF202020)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),

            //Botões de Categoria
            Column(
          children: [

            const SizedBox(height: 15.0),
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
                    child: const Center(
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
                    child: const Center(
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
                    child: const Center(
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
                    child: const Center(
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
            const SizedBox(height: 15.0),

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
                  color: const Color(0xFFb22124),
                  borderRadius: BorderRadius.circular(10),
                  /*
                  image: DecorationImage(
                    image: AssetImage('caminho/para/imagem.jpg'),
                    fit: BoxFit.cover,
                  ),
                   */
                ),
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: _products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.8),
                  itemBuilder: (context, index){
                    return ScopedModelDescendant<CartModel>(
                        builder: (context, child, model) {
                          return Card( child: Column( children: <Widget>[
                            Image.network(_products[index].imgUrl, height: 100, width: 100,),
                            Text(_products[index].title, style: const TextStyle(fontWeight: FontWeight.bold),),
                            Text("R\$${_products[index].price}"),
                            TextButton(
                                child: const Text("Comprar"),
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

