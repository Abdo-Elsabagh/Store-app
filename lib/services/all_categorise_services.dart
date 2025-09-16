import 'dart:convert';

import 'package:http/http.dart';
import 'package:note_app/helper/api.dart';

class AllCategoirseService {
  Future<List<dynamic>> getAllCategoirse() async {
    Response response =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    // http.Response response = await http
    //     .get(Uri.parse('https://fakestoreapi.com/products/categories'));

    List<dynamic> data = jsonDecode(response.body);

    return data;
  }
}
