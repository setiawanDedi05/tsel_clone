import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_tsel/app/routes/app_pages.dart';
import 'package:my_tsel/app/widget/news_telkomsel.dart';
import 'package:my_tsel/mockup/covid_content.dart';
import 'package:my_tsel/mockup/feature_content.dart';
import 'package:my_tsel/mockup/link_aja_content.dart';
import 'package:my_tsel/mockup/menu_bottom_bar.dart';
import 'package:my_tsel/mockup/voucher_content.dart';
import 'package:my_tsel/shared/theme.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(left: 20),
          child: RichText(
            text: TextSpan(text: "Hai, ", style: whiteTextStyle, children: [
              TextSpan(
                text: "Dedi Setiawan",
                style: whiteTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
            ]),
          ),
        ),
        centerTitle: false,
        backgroundColor: red,
        elevation: 0,
        actions: [
          Container(
              margin: EdgeInsets.only(right: 20),
              child: Image.asset(
                'assets/images/ic_round_qrcode.png',
                height: 18,
                width: 18,
              ))
        ],
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: red,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: Column(
              children: [
                BuildCard(),
                BuildMyPackage(),
                Container(
                  height: 10,
                  color: gray,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      BuildCategoryPackage(),
                      BuildNewsTelkomsel(),
                      BuildTanggapanCovid(),
                      BuildLinkgAjaContent(),
                      BuildVoucherContent(),
                      BuildSpecialOffer()
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          selectedItemColor: red,
          unselectedItemColor: black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          selectedLabelStyle:
              redTextStyle.copyWith(fontSize: 10, fontWeight: bold),
          unselectedLabelStyle:
              blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          items: menu_bottom_bar,
        ),
      ),
    );
  }

  Container BuildSpecialOffer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Penawaran Khusus",
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
              Text(
                "Lihat Semua",
                style: redTextStyle.copyWith(fontWeight: bold),
              ),
            ],
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: gray,
                        spreadRadius: 5,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        feature_content[index].imgUrl,
                        height: 112,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          feature_content[index].content,
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemCount: 2,
            ),
          ),
        ],
      ),
    );
  }

  Container BuildVoucherContent() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cari Voucher, Yuk!",
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
              Text(
                "Lihat Semua",
                style: redTextStyle.copyWith(fontWeight: bold),
              ),
            ],
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: gray,
                        spreadRadius: 5,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        voucher_content[index].imgUrl,
                        height: 112,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          voucher_content[index].content,
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemCount: 2,
            ),
          ),
        ],
      ),
    );
  }

  Container BuildLinkgAjaContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "AYO! Pake LinkAja!",
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
              "Pakai LinkAja untuk beli pulsa, beli paket data dan\nbayar tagihan lebih mudah."),
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width,
            height: 150,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: gray,
                          spreadRadius: 5,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          content[index].imgUrl,
                          height: 112,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            content[index].content,
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: 3),
          )
        ],
      ),
    );
  }

  Container BuildTanggapanCovid() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tanggap Covid-19",
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: gray,
                        spreadRadius: 5,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        covid_content[index].imgUrl,
                        height: 112,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        covid_content[index].content,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemCount: 2,
            ),
          ),
        ],
      ),
    );
  }

  Container BuildMyPackage() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 19),
      child: Wrap(
        spacing: 10,
        children: [
          itemCurrentData(
            title: "Internet",
            content: "12.19",
            unit: " Gb",
          ),
          itemCurrentData(
            title: "Telpon",
            content: "0",
            unit: " Min",
          ),
          itemCurrentData(
            title: "SMS",
            content: "23",
            unit: " SMS",
          ),
        ],
      ),
    );
  }

  Container BuildCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      width: Get.width,
      height: Get.height * 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            "assets/images/ic_card.png",
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "081575271662",
                style: whiteTextStyle.copyWith(fontWeight: extrabold),
              ),
              Spacer(),
              Image.asset(
                "assets/images/ic_simpati_logo.png",
                height: 15,
                width: 84,
              ),
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Text(
            "Sisa Pulsa Anda",
            style: whiteTextStyle.copyWith(fontWeight: normal),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Rp. 500.000",
                style: whiteTextStyle.copyWith(
                    fontWeight: extrabold, fontSize: 24),
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: yellow),
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Isi Pulsa",
                    style: blackTextStyle,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          RichText(
            text: TextSpan(
                text: "Berlaku sampai ",
                style: whiteTextStyle.copyWith(fontWeight: semibold),
                children: [TextSpan(text: "19 April 2023")]),
          ),
          Row(
            children: [
              Text(
                "Telkomsel POIN",
                style: whiteTextStyle,
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: yellow, borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "172",
                  style: blackTextStyle,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container BuildNewsTelkomsel() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Terbaru dari Telkomsel",
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
              Text(
                "Lihat Semua",
                style: redTextStyle.copyWith(fontWeight: bold),
              ),
            ],
          ),
          NewsTelkomsel()
        ],
      ),
    );
  }

  Container BuildCategoryPackage() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //category package
          Text(
            "Kategori Paket",
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              CategoryPackageItem(
                title: 'Internet',
                iconUrl: 'assets/images/ic_internet.png',
                onTap: () => Get.offAllNamed(Routes.INTERNET_PACKAGE),
              ),
              CategoryPackageItem(
                title: 'Telpon',
                iconUrl: 'assets/images/ic_telpon.png',
              ),
              CategoryPackageItem(
                title: 'SMS',
                iconUrl: 'assets/images/ic_sms.png',
              ),
              CategoryPackageItem(
                title: 'Roaming',
                iconUrl: 'assets/images/ic_roaming.png',
              ),
              CategoryPackageItem(
                title: 'Hiburan',
                iconUrl: 'assets/images/ic_hiburan.png',
              ),
              CategoryPackageItem(
                title: 'Unggulan',
                iconUrl: 'assets/images/ic_unggulan.png',
              ),
              CategoryPackageItem(
                title: 'Tersimpan',
                iconUrl: 'assets/images/ic_tersimpan.png',
              ),
              CategoryPackageItem(
                title: 'Riwayat',
                iconUrl: 'assets/images/ic_riwayat.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CategoryPackageItem extends StatelessWidget {
  final String title;
  final String iconUrl;
  final VoidCallback? onTap;
  const CategoryPackageItem({
    required this.title,
    this.onTap,
    required this.iconUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: yellow.withOpacity(0.1)),
              child: Image.asset(
                iconUrl,
                width: 31,
                height: 21,
              ),
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(fontWeight: normal, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}

class itemCurrentData extends StatelessWidget {
  final String title;
  final String content;
  final String unit;
  final VoidCallback? onTap;
  const itemCurrentData({
    required this.title,
    this.onTap,
    required this.content,
    required this.unit,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Container(
        height: 80,
        width: 120,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: gray,
              spreadRadius: 5,
              blurRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            RichText(
              text: TextSpan(
                  text: content,
                  style: redTextStyle.copyWith(fontWeight: bold, fontSize: 24),
                  children: [
                    TextSpan(
                      text: unit,
                      style: grayDarkTextStyle.copyWith(
                        fontWeight: normal,
                        fontSize: 14,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
