import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsTelkomsel extends StatelessWidget {
  const NewsTelkomsel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset("assets/images/img_news_${index + 1}.png");
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}