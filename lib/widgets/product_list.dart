import 'package:flutter/material.dart';

class ProdictList extends StatelessWidget {
//Create peramiter...
  final String name, price, quantity;
  const ProdictList({
    Key? key,
    required this.name,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        print('working');
      },
      child: Card(
        margin: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        child: ListTile(
          selectedColor: Colors.black,
          title: Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            '\$' + price,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.w800,
            ),
          ),
          trailing: Text(
            quantity,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      // child: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(14.0),
      //       child: Container(
      //         // margin: EdgeInsets.only(left: 10),
      //         alignment: Alignment.topLeft,
      //         height: h * 0.2,
      //         width: w,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.teal[50],
      //         ),
      //         child: Container(
      //           margin: EdgeInsets.only(left: 10),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'Product Name:    ' + name,
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Text(
      //                 'Price:                     ' + price,
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
