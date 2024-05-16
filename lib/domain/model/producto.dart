class Producto {
    int id;
    String name;
    int? price;
    int? quantity;
    String? color;
    String? category;
    String? image;

    Producto({
        required this.id,
        required this.name,
        this.price,
        this.quantity,
        this.color,
        this.category,
        this.image,
    });

    factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        quantity: json["quantity"],
        color: json["color"],
        category: json["category"],
        image: json["image"],
    );
}
