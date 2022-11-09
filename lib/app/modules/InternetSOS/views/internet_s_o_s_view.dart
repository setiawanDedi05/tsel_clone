import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/mockup/internet_sos_content.dart';
import 'package:my_tsel/shared/theme.dart';

import '../controllers/internet_s_o_s_controller.dart';

class InternetSOSView extends GetView<InternetSOSController> {
  const InternetSOSView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 32),
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: 150,
                margin: EdgeInsets.symmetric(vertical: 32),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/img_internet_sos.png",
                    ),
                  ),
                ),
              ),
              Text(
                "Ketentuan Internet SOS",
                style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 380,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      dense: true,
                      minLeadingWidth: 1,
                      leading: Text("${index + 1}. \n"), 
                      title: RichText(
                          text: internet_content[index],
                          softWrap: true,
                          maxLines: 2,
                        ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 8,
                  ),
                  itemCount: internet_content.length,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: red, maximumSize: Size(335, 42)),
                onPressed: () {},
                child: Container(
                  width: Get.width,
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "MENGERTI",
                    textAlign: TextAlign.center,
                    style: whiteTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: white,
                    side: BorderSide(color: red),
                    maximumSize: Size(335, 42)),
                onPressed: () {},
                child: Container(
                  width: Get.width,
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "PERTANYAAN",
                    textAlign: TextAlign.center,
                    style: redTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
