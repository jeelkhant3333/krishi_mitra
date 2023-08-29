import 'package:flutter/material.dart';
import '../models/item_card.dart';
import '../pages/buy_page.dart';

class HomePage extends StatelessWidget {
  final List<List<String>> productList = [
    ['cotton', '900', '1000'],
    ['wheat', '500', '300'],
    ['peanuts', '2000', '100000'],
  ];
  // ['Cotton', 'Wheat', 'Groundnut', 'Soybean',];
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuyPage()));
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
                  onPressed: () {},
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
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemCard(
                    itemName: product[0],
                    itemPrice: product[1],
                    itemStock: product[2],
                  ),
                  ItemCard(
                    itemName: product[0],
                    itemPrice: product[1],
                    itemStock: product[2],
                  ),
                  ItemCard(
                    itemName: product[0],
                    itemPrice: product[1],
                    itemStock: product[2],
                  ),
                  ItemCard(
                    itemName: product[0],
                    itemPrice: product[1],
                    itemStock: product[2],
                  ),
                  ItemCard(
                    itemName: product[0],
                    itemPrice: product[1],
                    itemStock: product[2],
                  ),
                  ItemCard(
                    itemName: product[0],
                    itemPrice: product[1],
                    itemStock: product[2],
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
