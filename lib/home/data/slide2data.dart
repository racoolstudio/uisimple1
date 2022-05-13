class Slide2data {
  final String image;
  final String name;
  Slide2data(this.name, this.image);
  static List<Slide2data> slide2details() {
    return [
      Slide2data('Dinning\nRoom', 'assets/dinning.png'),
      Slide2data('Bed\nRoom', 'assets/bedroom.png'),
      Slide2data('Office\nRoom', 'assets/office.png'),
    ];
  }
}
