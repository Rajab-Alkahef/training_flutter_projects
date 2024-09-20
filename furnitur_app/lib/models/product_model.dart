class ProductModel {
  final int price;
  final String id, title, category, image, subtitle, description;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.category,
      required this.image,
      required this.subtitle,
      required this.description});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        category: json['category'],
        image: json['image'],
        subtitle: json['subtitle'],
        description: json['description']);
  }
}

ProductModel productModel = ProductModel(
  id: "1",
  title: "Wood Frame",
  price: 1500,
  category: "Chair",
  image: "https://i.imgur.com/sI4GvE6.png",
  subtitle: "Tieton Armchair",
  description:
      "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
);
