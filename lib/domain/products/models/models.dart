class Products {
  final String? id;
  final String category;
  final String name;
  final String quantity;
  final num price;
  final String units;
  final String description;
  final List<dynamic>? image;

  Products(
      {this.id,
      required this.category,
      required this.name,
      required this.quantity,
      required this.price,
      required this.units,
      required this.description,
      this.image});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'name': name,
      'quantity': quantity,
      'price': price,
      'units': units,
      'description': description,
      'image': image
    };
  }

  static Products fromJson(Map<String, dynamic> json){
    return Products(
        category: json['category'],
        name: json['name'],
        quantity: json['quantity'],
        price: json['price'],
        units: json['units'],
        description: json['description'],
        id: json['id'],
        image: json['image']);
  }
}
