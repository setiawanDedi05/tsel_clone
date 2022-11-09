import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/shared/theme.dart';

import '../controllers/no_internet_access_controller.dart';

class NoInternetAccessView extends GetView<NoInternetAccessController> {
  const NoInternetAccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Container(
                width: 182,
                height: 182,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/img_lost_internet.png"))),
              ),
              SizedBox(
                height: 34,
              ),
              Text(
                "Ooops...\nTidak ada Internet!",
                style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 24),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Eits.. Tenang, kamu masih bisa mengakses aplikasi MyTelkomsel menggunakan layanan baru kami Internet SOS. Tertarik ?",
                style: grayDarkTextStyle,
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: red,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Pastikan kamu sudah membaca beberapa \n",
                      style: blackTextStyle,
                      children: [
                        TextSpan(
                          text: "ketentuan",
                          style: redTextStyle,
                        ),
                        TextSpan(
                          text: " dari Internet SOS.",
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: red, maximumSize: Size(335, 42)),
                onPressed: () {},
                child: Container(
                  width: Get.width,
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "LANJUTKAN",
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
                    "LAIN KALI",
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
