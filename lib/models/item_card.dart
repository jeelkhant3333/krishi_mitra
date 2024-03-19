import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int stock;
  final int price;
  final void onTap;
  final String location;
  final String contact;

  const CustomContainer(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.price,
      required this.stock,
      required this.onTap,
        required this.location,
        required this.contact});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.20,
      width: w * 0.36,
      margin: const EdgeInsets.only(left: 8.0, top: 8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade100,
          boxShadow: const [BoxShadow(color: Colors.white24)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("images/productImages/$title.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          const SizedBox(
            height: 3,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                        const SizedBox(width: 20,),
                        Text(
                          "${stock}Kg",
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 5,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${price}rs/20Kg",
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
