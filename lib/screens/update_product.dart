import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/widget/custom_bottom.dart';
import 'package:note_app/widget/cutom_text_filed.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  static String id = 'Update Product';

  String? producName, discription, image, price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Update Product'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/browser.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 10),
              CstomTextFiled(
                keyboardType: TextInputType.name,
                prefixIco: const Icon(Icons.drive_file_rename_outline),
                onChange: (data) {
                  producName = data;
                },
                hinttext: 'Enter Product Name',
                labeText: 'Product Name',
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 10),
              CstomTextFiled(
                keyboardType: TextInputType.name,
                prefixIco: const Icon(
                  FontAwesomeIcons.file,
                ),
                onChange: (data) {
                  discription = data;
                },
                hinttext: 'Enter discription',
                labeText: 'Discription',
              ),
              const SizedBox(
                height: 10,
              ),
              CstomTextFiled(
                keyboardType: TextInputType.number,
                onChange: (data) {
                  price = data;
                },
                prefixIco: const Icon(Icons.attach_money),
                hinttext: 'Enter Product Name',
                labeText: 'Price',
              ),
              const SizedBox(
                height: 10,
              ),
              CstomTextFiled(
                keyboardType: TextInputType.name,
                prefixIco: const Icon(Icons.image),
                hinttext: 'Enter Image',
                labeText: 'Image',
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTop: () {
                  // UpdateProductService().updateProduct(
                  //   title: producName!,
                  //   price: price!,
                  //   desc: discription!,
                  //   image: image!,
                  // );
                },
                textButton: 'Update',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
