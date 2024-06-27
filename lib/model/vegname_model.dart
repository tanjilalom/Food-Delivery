class vegname {
  String image;
  String name;
  String price;

  vegname({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<vegname> vegetable = [
  vegname(name: 'Sprouting broccoli', price: '1.10€/kg', image: 'assets/product/Vegetables/broccoli.jpg'),
  vegname(name: 'Romaine Lettuce', price: '1.10€/piece', image: 'assets/product/Vegetables/romaine-lettuce.jpg'),
  vegname(name: 'Beetroot', price: '1.50€/kg', image: 'assets/product/Vegetables/Beetroot.jpg'),
  vegname(name: 'Capsicums', price: '1.00€/kg', image: 'assets/product/Vegetables/capsicums.jpg'),
  vegname(name: 'Cauliflower', price: '1.30€/kg', image: 'assets/product/Vegetables/cauliflower.jpg'),
  vegname(name: 'Pumpkins', price: '0.10€/kg', image: 'assets/product/Vegetables/pumpkin.jpg'),
];
