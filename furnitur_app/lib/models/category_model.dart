class CategoryModel {
  final String id, title, image;
  final int numOfProducts;

  CategoryModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.numOfProducts});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        numOfProducts: json['numOfProducts']);
  }
}

CategoryModel categoryModelDemo = CategoryModel(
  id: "1",
  title: "Armchair",
  image: "https://i.imgur.com/sI4GvE6.png",
  numOfProducts: 100,
);
