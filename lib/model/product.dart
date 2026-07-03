class Product {
  final int id;
  final String name;
  final double price;
  final int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      name: json["name"],
      price: (json["price"] as num).toDouble(),
      quantity: json["quantity"],
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "price": price, "quantity": quantity};
  }
}
