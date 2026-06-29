class Product {
  final int? id;
  final String? name;
  final double? price;
  final String? description;
  final String? thumbnail;
  final double? rating;

  Product({
    this.id,
    this.name,
    this.price,
    this.description,
    this.thumbnail,
    this.rating,
  });

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['title'],
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'],
      thumbnail: json['thumbnail'],
      rating: (json['rating'] as num?)?.toDouble(),
    );
  }
}
