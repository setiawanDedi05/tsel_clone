class StudyAtHome{
  final String capacity;
  final String expired;
  final bool isBookmark;
  final bool isDiscount;
  final String price;
  final String realPrice;
  final String name;
  const StudyAtHome({
    required this.capacity,
    required this.expired,
    required this.isBookmark,
    required this.isDiscount,
    required this.price,
    required this.realPrice,
    required this.name,
  });
}

List<StudyAtHome> studyAtHome_content = [
  StudyAtHome(capacity: '30 Gb', expired: '30 Hari', isBookmark: false, isDiscount: false, name: 'IlmuPedia', price: 'Free', realPrice: 'Free'),
  StudyAtHome(capacity: '30 Gb', expired: '30 Hari', isBookmark: true, isDiscount: false, name: 'RuangGuru', price: 'Free', realPrice: 'Free'),
];
