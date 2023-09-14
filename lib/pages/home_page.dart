import 'package:flutter/material.dart';
import 'package:krishi_mitra/pages/sell_page.dart';
import '../models/item_card.dart';
import '../pages/buy_page.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> productList = [
    {'name': 'cotton', 'price': '900', 'stock': '1000'},
    {'name': 'wheat', 'price': '500', 'stock': '300'},
    {'name': 'peanuts', 'price': '2000', 'stock': '100000'},
  ];

  final List<String> suggestedProductList = [
    'cotton',
    'wheat',
    'peanuts',
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Krishi Mitra'),
        backgroundColor: const Color(0xFF79B854),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Welcome To Krushi Mitra',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            searchbar(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BuyPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightGreen,
                    elevation: 5,
                  ),
                  child: const Text('Buy'),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SellPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightGreen,
                    elevation: 5,
                  ),
                  child: const Text('Sell'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            productIcons(),
            const SizedBox(height: 30),
            productCardRow(),
          ],
        ),
      ),
    );
  }

  Widget searchbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        cursorColor: const Color(0xFF79B854),
        decoration: InputDecoration(
          hintText: 'Search product',
          prefixIcon: const Icon(Icons.search, color: Color(0xFF79B854)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Color(0xFF79B854), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Color(0xFF79B854), width: 2),
          ),
        ),
      ),
    );
  }

  Widget productIcons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (String product in suggestedProductList)
            ItemIconRoundedButton(
                Image(
                  image: AssetImage('images/productIcons/$product.png'),
                  fit: BoxFit.fill,
                ),
                product,
                () {}),
        ],
      ),
    );
  }

  Widget productCardRow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var product in productList)
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemCard(
                    itemName: product['name'],
                    itemPrice: product['price'],
                    itemStock: product['stock'],
                    onPress: () {},
                  ),
                  ItemCard(
                    itemName: product['name'],
                    itemPrice: product['price'],
                    itemStock: product['stock'],
                    onPress: () {},
                  ),
                  ItemCard(
                    itemName: product['name'],
                    itemPrice: product['price'],
                    itemStock: product['stock'],
                    onPress: () {},
                  ),
                  ItemIconRoundedButton(
                      const Icon(Icons.arrow_forward), 'View more', () {}),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class ItemIconRoundedButton extends StatelessWidget {
  const ItemIconRoundedButton(this.child, this.text, this.onPress, {super.key});

  final String text;
  final void Function() onPress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: ElevatedButton(
              onPressed: onPress,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.green[800],
                backgroundColor: Colors.white,
                side: const BorderSide(color: Color(0xFF2E7D32)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 5,
              ),
              child: child,
            ),
          ),
          const SizedBox(height: 9),
          SizedBox(
            width: 70,
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
