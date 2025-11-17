import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/models/product_model.dart';
import 'package:note_app/services/update_product.dart';
import 'package:note_app/widget/box_screen.dart';
import 'package:note_app/widget/custom_bottom.dart';
import 'package:note_app/widget/cutom_text_filed.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});

  static String id = 'Update Product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? producName, discription, image, price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                  height: 30,
                ),
                Lottie.asset(
                  'assets/svg/Update.json',
                  height: 140,
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
                  onTop: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      UpdateProduct(product);
                      print('success');
                      BoxScreen(
                          massage: 'Update success 😊',
                          text: 'The product has been successfully updated.',
                          icon: const Icon(
                            Icons.check_circle,
                          ));
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                  textButton: 'Update',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void UpdateProduct(ProductModel product) {
    UpdateProductService().updateProduct(
        title: producName == null ? product.title : producName!,
        price: price == null ? product.price.toString() : price!,
        desc: discription == null ? product.description : discription!,
        image: image == null ? product.image : image!,
        category: product.category,
        id: product.id.toString());
  }
}
