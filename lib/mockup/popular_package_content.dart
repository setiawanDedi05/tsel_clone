class PopularContent {
  final String capacity;
  final String expired;
  final bool isBookmark;
  final bool isDiscount;
  final String price;
  final String realPrice;
  final String name;
  const PopularContent({
    required this.capacity,
    required this.expired,
    required this.isBookmark,
    required this.isDiscount,
    required this.price,
    required this.realPrice,
    required this.name,
  });
}

List<PopularContent> popular_content = [
  PopularContent(capacity: '14 Gb', expired: '30 Hari', isBookmark: false, isDiscount: true, name: 'Internet OMG!', price: 'Rp. 99.000', realPrice: 'Rp. 95.000'),
  PopularContent(capacity: '20 Gb', expired: '30 Hari', isBookmark: true, isDiscount: false, name: 'Kuota Keluarga', price: 'Rp. 150.000', realPrice: 'Rp. 150.000'),
];
