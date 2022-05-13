class Popular {
  final String image;
  final String name;
  final String price;
  late String? newPrice;
  Popular(
      {required this.name,
      required this.image,
      required this.price,
      this.newPrice});

  
}

   List<Popular> popularinfo = <Popular>[
      Popular(name: 'Sverom chair', image: 'assets/ch1.png', price: '\$400'),
      Popular(
          name: 'Norrviken chair and table',
          image: 'assets/ch2.png',
          price: '\$999'),
      Popular(name: 'Ektorp sofa', image: 'assets/ch2.png', price: '\$599'),
      Popular(
          name: 'Jan Sflanaganvik sofa',
          image: 'assets/ch1.png',
          price: '\$899',
          newPrice: '\$599')
    ];