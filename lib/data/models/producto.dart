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

}
