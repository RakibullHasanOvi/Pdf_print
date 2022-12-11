import 'package:flutter/material.dart';
import 'package:print_pdf_app/Pages/image_picker.dart';

import '../widgets/CreateForm.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cNmae = TextEditingController();
    final cAddress = TextEditingController();
    final mNumber = TextEditingController();
    final vatTex = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.lime[50],
//! AppBar ..
      appBar: AppBar(
        elevation: 1,
        title: const Text('Settings'),
        centerTitle: true,
      ),
//!Start working body
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          //I used this widgets Beacuse my page scrollablel...
          child: Column(
            children: [
              ImagePicker(),
              CreateForm(
                controller: cNmae,
                name: "Company Name",
                icons: Icons.apartment_outlined,
              ),
              CreateForm(
                controller: cAddress,
                name: "Compay Address",
                icons: Icons.location_on_outlined,
              ),
              CreateForm(
                controller: mNumber,
                name: "Phone Number",
                icons: Icons.phone,
              ),
              CreateForm(
                controller: vatTex,
                name: "Vat Charge",
                icons: Icons.add_card_sharp,
              ),
              const SizedBox(
                height: 20,
              ),
              //! create this button by container..
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
