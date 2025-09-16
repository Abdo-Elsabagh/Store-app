import 'dart:convert';

import 'package:http/http.dart';
import 'package:note_app/helper/api.dart';
import 'package:note_app/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProducts() async {
    Response response =
        await Api().get(url: 'https://fakestoreapi.com/products');
// http.Response response =
//         await http.get(Uri.parse('https://fakestoreapi.com/products'));

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
