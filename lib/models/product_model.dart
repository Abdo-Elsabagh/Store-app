class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final RatingModel rating;
  final String image;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.rating,
      required this.image});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'] as int,
        title: jsonData['title'] as String,
        price: (jsonData['price'] as num).toDouble(),
        description: jsonData['description'] as String,
        category: jsonData['category'] as String,
        image: jsonData['image'] as String,
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
        rate: (jsonData['rate'] as num).toDouble(),
        count: jsonData['count'] as int);
  }
}
