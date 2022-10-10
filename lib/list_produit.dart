class Produit{
   String? text;
   String? price;
    String? imagePath;
  Produit({
    this.text,
    this.price,
    this.imagePath,
  });
}
final produits = [
Produit(
  text: 'chaise',
  price: '\$1000',
  imagePath: 'assets/canape.png',
),
Produit(
  text: 'fauteil',
  price: '\$1000',
  imagePath: 'assets/canape.png',
),
Produit(
  text: 'chaise',
  price: '\$1000',
  imagePath: 'assets/canape.png',
),
];