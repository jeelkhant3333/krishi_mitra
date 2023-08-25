import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> productIconsButton =[

    ItemIconButton(Icons.person,'Cotton'),
    // ItemIconButton(Icons.person,' '),
    // ItemIconButton(Icons.person,'Pxyz'),
    // ItemIconButton(Icons.person,'Product Name'),
    // ItemIconButton(Icons.person,'Product Name'),
    // ItemIconButton(Icons.person,'Product Name'),
    // ItemIconButton(Icons.person,'Product Name'),
  ];

  List<Widget> productCard = [
    const iteamCard('Cotton' , '900' ),
    const iteamCard('weat', '500'),
    // const iteamCard('groundnut', '1500'),
    // const iteamCard('soyabin', '1500'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Krishi Mitra'),
        backgroundColor: const Color(0xFF79B854),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height/0.5,
          width: double.infinity,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20,left: 10,right: 10),
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
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search product',
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: const Color(0xFF79B854),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color(0xFF79B854),
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color(0xFF79B854),
                          width: 2,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,
                      elevation: 5,
                    ),
                    child: const Text(
                      'Buy',
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,
                      elevation: 5,
                    ),
                    child: const Text(
                      'Sell',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      ...productIconsButton.map((e) => productIconsButton[0]),
                    ]),
              ),
              const SizedBox(height: 30,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...productCard.map((e) => productCard[0]),
                          ],),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...productCard.map((e) => productCard[1]),
                          ],),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...productCard.map((e) => productCard[0]),
                          ],),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...productCard.map((e) => productCard[0]),
                            ItemIconButton(Icons.arrow_forward,'View more'),
                          ],),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class iteamCard extends StatelessWidget {
   const iteamCard(this.itemName , this.itemPrice);
  final String itemName;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 110, width: 150,
              child: Container(
                child:const Image(image: AssetImage('images/logo.png'),),
              ),
            ),
            Text(itemName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text('$itemPrice/20Kg',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ],),

      ),
    );
  }
}

class ItemIconButton extends StatelessWidget {

  ItemIconButton(this.icon ,this.text);
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10 ,right: 10),
      child: Column(
        children: [
          SizedBox(height: 60, width: 60,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green[800],
                  side: const BorderSide(color:Color(0xFF2E7D32) ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                elevation: 5
              ),
              child:Icon(icon),
            ),
          ),
          const SizedBox(height: 9,),
           SizedBox(
             width: 50,
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
