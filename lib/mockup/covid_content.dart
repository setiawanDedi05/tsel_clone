class CovidContent {
  final String content;
  final String imgUrl;
  const CovidContent({required this.content, required this.imgUrl}) ;
}

List<CovidContent> covid_content = [
  CovidContent(content: 'Diskon Special 25% untuk\npelanggan baru', imgUrl: "assets/images/img_covid_1.png"),
  CovidContent(content: 'Bebas Kuota Akses Layanan\nKesehatan', imgUrl: "assets/images/img_covid_2.png"),
];