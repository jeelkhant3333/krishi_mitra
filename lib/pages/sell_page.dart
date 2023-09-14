import 'package:flutter/material.dart';
class SellPage extends StatefulWidget {
  const SellPage({super.key});

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  List<String> l = <String>["cotton", "groundnut", "maize", "castor"];
  String dropdownValue = 'cotton';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Krishi Mitra'),
        backgroundColor: const Color(0xFF79B854),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 80,
                          child: Text(
                            'Select product :',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      DropdownButton<String>(
                        iconEnabledColor: Colors.lightGreen,
                        iconDisabledColor: Colors.lightGreen,
                        value: dropdownValue,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          size: 40,
                        ),
                        elevation: 10,
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.lightGreen,
                        ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: l.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Column(
                  children: [
                    ProductForm(
                      text: '  Price :    ',
                      suffixText: '/20Kg',
                      hintText: 'Enter Estimated price',
                    ),
                    SizedBox(height: 50),
                    ProductForm(
                      text: 'Quantity :',
                      suffixText: 'Kg',
                      hintText: 'Enter total quantity in kg',
                    ),
                    SizedBox(height: 50),
                    ProductForm(
                      text: 'Contact : ',
                      suffixText: '',
                      hintText: 'Your Contact Number',
                    ),
                    SizedBox(height: 50),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.lightGreen,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Sell',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductForm extends StatelessWidget {
  const ProductForm(
      {super.key,
      required this.text,
      required this.hintText,
      required this.suffixText});
  final String text;
  final String suffixText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.green,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    suffixText: suffixText,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                onChanged: (value){

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
