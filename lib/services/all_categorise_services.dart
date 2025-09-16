import 'package:note_app/helper/api.dart';

class AllCategoirseService {
  Future<List<dynamic>> getAllCategoirse() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    // http.Response response = await http
    //     .get(Uri.parse('https://fakestoreapi.com/products/categories'));

    return data;
  }
}
