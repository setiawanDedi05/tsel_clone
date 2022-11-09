class SubscriptionContent {
  final String capacity;
  final String expired;
  final bool isBookmark;
  final bool isDiscount;
  final String price;
  final String realPrice;
  final String name;
  const SubscriptionContent({
    required this.capacity,
    required this.expired,
    required this.isBookmark,
    required this.isDiscount,
    required this.price,
    required this.realPrice,
    required this.name,
  });
}

List<SubscriptionContent> subscription_content = [
  SubscriptionContent(capacity: '14 Gb', expired: '30 Hari', isBookmark: false, isDiscount: true, name: 'Internet OMG!', price: 'Rp. 99.000', realPrice: 'Rp. 95.000'),
  SubscriptionContent(capacity: '27 Gb', expired: '30 Hari', isBookmark: true, isDiscount: true, name: 'Iphone Plane', price: 'Rp. 145.000', realPrice: 'Rp. 133.000'),
];
