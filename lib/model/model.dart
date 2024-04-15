class Product {
  String image;
  String title;
  int rating;

  Product({
    required this.rating,
    required this.image,
    required this.title,
  });
}

List<Product> products = [
  Product(
    rating: 5,
    title: "Dog",
    image: "assets/dogs.png",
  ),
  Product(
    rating: 4,
    title: "Fish",
    image: "assets/fishs.png",
  ),
  Product(
    rating: 2,
    title: "Cat",
    image: "assets/cats.png",
  ),
  Product(
    rating: 3,
    title: "Bird",
    image: "assets/bird.png",
  ),
];
