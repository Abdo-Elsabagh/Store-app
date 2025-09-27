import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/models/product_model.dart';
import 'package:note_app/services/get_all_product_service.dart';
import 'package:note_app/widget/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('New Trend'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
            child: FutureBuilder<List<ProductModel>>(
              future: AllProductService().getAllProducts(),
              builder: (context, snapshot) {
                print("hasData: ${snapshot.hasData}");
                print("hasError: ${snapshot.hasError}");
                print("connectionState: ${snapshot.connectionState}");

                if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                print(snapshot.hasData);
                if (snapshot.hasData) {
                  return GridView.builder(
                      clipBehavior: Clip.none,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.5,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 100),
                      itemBuilder: (context, index) {
                        return const CustomCard();
                      });
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )));
  }
}
