import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/app/routes/app_pages.dart';
import 'package:my_tsel/app/widget/text.dart';
import 'package:my_tsel/app/widget/text_fields.dart';
import 'package:my_tsel/shared/theme.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          title: const Text('OtpView'),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios,
            color: black,
          ),
          backgroundColor: white,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 56),
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/img_otp_hero.png',
                  width: 147.98,
                  height: 133.63,
                ),
              ),
              SizedBox(
                height: 46,
              ),
              CustomeTitle(text: "Masukan kode unik yang kami kirim"),
              Text(
                  "Silahkan periksa SMS kamu dan masukan kode unik yang kami kirimkan ke 081290112333"),
              SizedBox(
                height: 24,
              ),
              CustomeTextFields(
                label: "Kode Unik",
                controller: controller.otpController,
                hint: "Cth. q12***",
                autoFocus: true,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 16,
              ),
              RichText(
                text: TextSpan(
                  text: "Tidak menerima SMS ? ",
                  style: blackTextStyle,
                  children: [
                    TextSpan(text: "Kirim ulang", style: redTextStyle)
                  ]
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.otpController.value != '' ? red : gray),
                onPressed: () => Get.offAllNamed(Routes.HOME),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Verify OTP",
                    style: controller.otpController.value != ''
                        ? whiteTextStyle
                        : grayDarkTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
