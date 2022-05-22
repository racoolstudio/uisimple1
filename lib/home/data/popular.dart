class Popular {
  final String image;
  final String name;
  final String price;
  late String? newPrice;
  late String? rateImg;
  String? rateNum;
  String? reviews;
  int qty;
  Popular(
      {required this.name,
      required this.image,
      required this.price,
      this.newPrice,
      this.rateImg,
      this.rateNum,
      this.reviews,
      required this.qty});
  static List<Popular> popularinfo() {
    return [
      Popular(
          name: 'Sverom chair',
          image: 'assets/ch1.png',
          price: '\$400',
          rateImg: 'assets/rate1.svg',
          rateNum: '4.6',
          reviews: '98',
          qty: 1),
      Popular(
          name: 'Grundtal sofa',
          image: 'assets/pic1.png',
          price: '\$400',
          rateImg: 'assets/rate1.svg',
          rateNum: '4.6',
          reviews: '98',
          qty: 2),
      Popular(
          name: 'Ektorp sofa',
          image: 'assets/pic2.png',
          price: '\$599',
          rateImg: 'assets/rate1.svg',
          rateNum: '4.6',
          reviews: '98',
          qty: 1),
      Popular(
          name: 'Norrviken chair and table',
          image: 'assets/ch2.png',
          price: '\$999',
          rateImg: 'assets/rate1.svg',
          rateNum: '4.6',
          reviews: '98',
          qty: 4),
      Popular(
          name: 'Jan Sflanaganvik sofa',
          image: 'assets/pic3.png',
          price: '\$899',
          newPrice: '\$599',
          rateImg: 'assets/rate1.svg',
          rateNum: '4.6',
          reviews: '98',
          qty: 1),
    ];
  }
}
