import 'package:flutter/material.dart';
import 'package:print_pdf_app/Buttons/my_Buttons.dart';
import 'package:print_pdf_app/models/list.dart';
import 'package:print_pdf_app/widgets/CreateForm.dart';

class DialougeBox extends StatefulWidget {
  void Function(Plist) onSave;
  DialougeBox(this.onSave, {super.key});

  @override
  State<DialougeBox> createState() => _DialougeBoxState();
}

class _DialougeBoxState extends State<DialougeBox> {
  @override
  Widget build(BuildContext context) {
    // Widget buildTextField(String hint, TextEditingController controller) {
    //   return Container(
    //     margin: EdgeInsets.all(4),
    //     child: TextField(
    //       decoration: InputDecoration(
    //         labelText: hint,
    //         border: OutlineInputBorder(
    //           borderSide: BorderSide(
    //             color: Colors.black38,
    //           ),
    //         ),
    //       ),
    //       controller: controller,
    //     ),
    //   );
    // }

    final productName = TextEditingController();
    final untilPrice = TextEditingController();
    final quenTity = TextEditingController();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: AlertDialog(
        backgroundColor: Colors.lime[50],
        content: SizedBox(
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text('Add Productlist'),

              CreateForm(
                name: 'Product Name',
                icons: Icons.shopping_bag_sharp,
                controller: productName,
              ),
              CreateForm(
                name: 'Price',
                icons: Icons.attach_money_sharp,
                controller: untilPrice,
              ),
              CreateForm(
                name: 'Quentity',
                icons: Icons.control_point_outlined,
                controller: quenTity,
              ),

              const SizedBox(
                height: 10,
              ),
              MyButtons(
                  text: 'ADD',
                  onPressed: () {
                    final pList = Plist(
                      productName.text.toString(),
                      untilPrice.text.toString(),
                      quenTity.text.toString(),
                    );
                    widget.onSave(pList);
                    Navigator.of(context).pop();
                    print(pList);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
