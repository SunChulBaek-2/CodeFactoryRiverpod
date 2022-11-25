class ShoppingItemModel {
  ShoppingItemModel({
    required this.name,
    required this.quantity,
    required this.hasBought,
    required this.isSpicy
  });

  final String name;
  final int quantity;
  final bool hasBought;
  final bool isSpicy;
}