class catagory_item {
  String image;
  String name;
  int stock;

  catagory_item({
    required this.image,
    required this.name,
    required this.stock,
  });
}

List<catagory_item> category = [
  catagory_item(image: 'assets/romaine-lettuce.jpg', name: 'Lettucce', stock: 12),
  catagory_item(image: 'assets/broccoli.jpg', name: 'Broccoli', stock: 15),
  catagory_item(image: 'assets/romaine-lettuce.jpg', name: 'banana', stock: 42),
  catagory_item(image: 'assets/broccoli.jpg', name: 'orange', stock: 36),
  catagory_item(image: 'assets/romaine-lettuce.jpg', name: "Apple", stock: 70),
  catagory_item(image: 'assets/broccoli.jpg', name: 'Lettucce', stock: 46),
];
