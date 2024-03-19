import 'package:flutter/material.dart';

class SellPage extends StatefulWidget {
  const SellPage({super.key});

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController priceController =TextEditingController();
  TextEditingController stockController =TextEditingController();
  TextEditingController locationController =TextEditingController();
  TextEditingController contactController =TextEditingController();


  List<String> l = <String>["cotton", "groundnut", "maize", "castor"];
  String dropdownValue = 'cotton';

  void submitForm() {
    if (formKey.currentState?.validate() ?? false) {
      // signIn();
    }
  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:  const Color(0xFF79B854),
          leading:  Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: IconButton(
              color: Colors.white,
              onPressed: () { Navigator.of(context).pop(); }, icon: const Icon(Icons.arrow_back,),
      
            ),
          ),
          title: const Text('Sell Your Products'),
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text("Select Product: ",style: TextStyle(fontSize: 17),),
                      const SizedBox(width: 16),
                      DropdownButton<String>(
                        iconEnabledColor: Colors.lightGreen,
                        iconDisabledColor: Colors.lightGreen,
                        value: dropdownValue,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                        ),
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        onChanged: (String? value) {
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
                  Form(
                    key: formKey,
                    child: Column(children: [
                      TextFormField(
                        cursorColor: const Color(0xFF79B854),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        controller: priceController,
                        decoration: const InputDecoration(
                          hintText: "Enter price par 20Kg",
                            labelText: "Price",
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            helperStyle: TextStyle(fontWeight: FontWeight.w100),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.black54,
                                ))),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        cursorColor: const Color(0xFF79B854),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        controller: stockController,
                        decoration: const InputDecoration(
                          hintText: "Enter stock in Kg",
                            labelText: "Stock",
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            helperStyle: TextStyle(fontWeight: FontWeight.w100),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.black54,
                                ))),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        cursorColor: const Color(0xFF79B854),
                        controller: locationController,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            hintText: "Enter location",
                            labelText: "Location",
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            helperStyle: TextStyle(fontWeight: FontWeight.w100),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.black54,
                                ))),
                      ),
                      const SizedBox(height: 16,),
                      TextFormField(
                        cursorColor: const Color(0xFF79B854),
                        controller: contactController,
                       keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "Enter contact number",
                            labelText: "Contact Number",
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            helperStyle: TextStyle(fontWeight: FontWeight.w100),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.black54,
                                ))),
                      ),
                      const SizedBox(height: 16,),
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xFF79B854),
                          ),
                        ),
                        onPressed: () {
                          submitForm();
                          // Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> Home()));
                        },
                        child: Container(
                          height: h * 0.0585,
                          width: w * 0.872,
                          alignment: Alignment.center,
                          child: const Text(
                            "Sell",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.white
                          ),
                        ),
                        onPressed: () {
                          priceController.clear();
                          stockController.clear();
                          locationController.clear();
                          contactController.clear();
                        },
                        child: Container(
                          height: h * 0.0585,
                          width: w * 0.872,
                          alignment: Alignment.center,
                          child: const Text(
                            "Clear",
                            style: TextStyle(
                              color: Color(0xFF79B854),
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
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
    return Expanded(
      child: Form(
        // key: formKey1,
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
          onChanged: (value) {},
        ),
      ),
    );
  }
}



// validators, sufixtesxt , max len 
