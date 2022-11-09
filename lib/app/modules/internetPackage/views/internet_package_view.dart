import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/app/widget/news_telkomsel.dart';
import 'package:my_tsel/mockup/belajar_dirumah_content.dart';
import 'package:my_tsel/mockup/kategory_content.dart';
import 'package:my_tsel/mockup/popular_package_content.dart';
import 'package:my_tsel/mockup/your_subscription.dart';
import 'package:my_tsel/shared/theme.dart';

import '../controllers/internet_package_controller.dart';

class InternetPackageView extends GetView<InternetPackageController> {
  const InternetPackageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: black,
        ),
        title: const Text(
          'Paket Internet',
          style: blackTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: gray, borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: "Cari paket favorit kamu ...",
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                child: ListView(
                  children: [
                    NewsTelkomsel(),
                    BuildYourSebscriptionWidget(),
                    BuildCategoryWidget(),
                    BuildPopularPackage(),
                    BuildStudyAtHome()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container BuildStudyAtHome() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Belajar #dirumahaja",
            style: blackTextStyle.copyWith(fontWeight: bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width,
            height: 130,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return YourSubscription(
                  capacity: studyAtHome_content[index].capacity,
                  expired: studyAtHome_content[index].expired,
                  name: studyAtHome_content[index].name,
                  price: studyAtHome_content[index].price,
                  isBookmark: studyAtHome_content[index].isBookmark,
                  isDiscount: studyAtHome_content[index].isDiscount,
                  realPrice: studyAtHome_content[index].realPrice,
                );
              },
              itemCount: 2,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container BuildPopularPackage() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular",
            style: blackTextStyle.copyWith(fontWeight: bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width,
            height: 130,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return YourSubscription(
                  capacity: popular_content[index].capacity,
                  expired: popular_content[index].expired,
                  name: popular_content[index].name,
                  price: popular_content[index].price,
                  isBookmark: popular_content[index].isBookmark,
                  isDiscount: popular_content[index].isDiscount,
                  realPrice: popular_content[index].realPrice,
                );
              },
              itemCount: 2,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container BuildCategoryWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kategori",
                style: blackTextStyle.copyWith(fontWeight: bold),
              ),
              Text(
                "Lihat Semua",
                style: redTextStyle.copyWith(fontWeight: bold),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              height: 200,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category_content.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 8,
                  childAspectRatio: 3 / 5,
                  mainAxisSpacing: 8,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return GridTile(
                    child: CategoryItemWidget(
                      name: category_content[index].name,
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }

  Container BuildYourSebscriptionWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Langganan Kamu",
            style: blackTextStyle.copyWith(fontWeight: bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width,
            height: 130,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return YourSubscription(
                  capacity: subscription_content[index].capacity,
                  expired: subscription_content[index].expired,
                  name: subscription_content[index].name,
                  price: subscription_content[index].price,
                  isBookmark: subscription_content[index].isBookmark,
                  isDiscount: subscription_content[index].isDiscount,
                  realPrice: subscription_content[index].realPrice,
                );
              },
              itemCount: 2,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  final String name;
  const CategoryItemWidget({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.bottomLeft,
            colors: [
              black.withRed(150),
              red,
            ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          name,
          style: whiteTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class YourSubscription extends StatelessWidget {
  final String capacity;
  final String expired;
  final bool isBookmark;
  final bool isDiscount;
  final String price;
  final String realPrice;
  final String name;
  const YourSubscription({
    required this.name,
    required this.capacity,
    required this.expired,
    this.isBookmark = false,
    this.isDiscount = false,
    required this.price,
    required this.realPrice,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 120,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: gray,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                capacity,
                style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: gray, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/ic_timer_sand.png',
                      height: 16,
                      width: 16,
                    ),
                    Text(
                      expired,
                      style: blackTextStyle.copyWith(fontWeight: bold),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.bookmark,
                color: isBookmark ? grayDark : gray,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isDiscount
                      ? Text(
                          price,
                          style: grayDarkTextStyle.copyWith(
                              decoration: TextDecoration.lineThrough),
                        )
                      : Text(""),
                  Text(
                    realPrice,
                    style:
                        redTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  )
                ],
              ),
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
