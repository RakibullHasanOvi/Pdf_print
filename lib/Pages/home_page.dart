import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:print_pdf_app/Buttons/my_Buttons.dart';
import 'package:print_pdf_app/Pages/dialouge_box.dart';
import 'package:print_pdf_app/Pages/setting_page.dart';
import 'package:print_pdf_app/Pages/test.dart';
import 'package:print_pdf_app/widgets/product_list.dart';
import 'package:printing/printing.dart';
import '../models/list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _displayPdf() {
    final doc = pw.Document();
    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Text(
              'Hello eclectify Enthusiast',
              style: pw.TextStyle(fontSize: 30),
            ),
          );
        },
      ),
    );

    /// open Preview Screen
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PreviewScreen(doc: doc),
        ));
  }

//List for products..
  List<Plist> productList = [];
  @override
  Widget build(BuildContext context) {
//Save function..
    void onSave(Plist pList) {
      setState(() {
        productList.add(pList);
      });
    }

//New Task build fuctiond..
    void createNewRask() {
      showDialog(
        context: context,
        builder: (context) {
          return DialougeBox(onSave);
        },
      );
    }
    //

    // final h = MediaQuery.of(context).size.height;
    // final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lime[50],
      floatingActionButton: FloatingActionButton(
        onPressed: createNewRask,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'Print_Pdf_list',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const SettingPage(),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          print(onSave);
        },
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: productList.length,
                itemBuilder: (ctx, i) {
                  return ProdictList(
                    name: productList[i].label,
                    price: productList[i].amount,
                    quantity: productList[i].quentity,
                  );
                },
              ),
            ),
            MyButtons(
              text: 'PDF',
              onPressed: () {
                print('PDF');
                _displayPdf();
              },
            ),
          ],
        ),
      ),
    );
  }
}
