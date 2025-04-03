class ProductEntity {
  final int id;
  final String title;
  final String image;
  final int price;
  final int discount;

  ProductEntity(
      {required this.id,
      required this.title,
      required this.image,
      required this.price,
      required this.discount});
}
