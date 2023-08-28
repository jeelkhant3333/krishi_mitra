import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> productList =
  ['Cotton', 'Wheat', 'Groundnut', 'Soybean',];
  final List<String> suggestionProductList =
  ['Cotton', 'Wheat', 'Groundnut', 'Soybean','Jeera','Onion'];

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
                  onPressed: () {},
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
            productCardRows(),
          ],
        ),
      ),
    );
  }
  Widget searchbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
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
          for (String product in suggestionProductList)
            ItemIconRoundedButton(Icons.person, product , (){}),
        ],
      ),
    );
  }

  Widget productCardRows() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (String product in productList)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemCard(itemName: product, itemPrice: '900'),
                  ItemCard(itemName: product, itemPrice: '900'),
                  ItemCard(itemName: product, itemPrice: '900'),
                  ItemCard(itemName: product, itemPrice: '900'),
                   ItemIconRoundedButton(Icons.arrow_forward, 'View more', (){}),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.itemName, required this.itemPrice});

  final String itemName;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 110,
              width: 150,
              child: Image(image: AssetImage('images/logo.png')),
            ),
            Text(
              itemName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                '$itemPrice/20Kg',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemIconRoundedButton extends StatelessWidget {
  const ItemIconRoundedButton(this.icon, this.text , this.onPress, {super.key});

  final IconData? icon;
  final String text;
  final void Function() onPress;

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
              child: Icon(icon),
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