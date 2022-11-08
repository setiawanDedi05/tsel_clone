import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/app/routes/app_pages.dart';
import 'package:my_tsel/app/widget/text.dart';
import 'package:my_tsel/app/widget/text_fields.dart';
import 'package:my_tsel/shared/theme.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(controller.checkController.value);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 56),
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/img_login_hero.png',
                width: 147.98,
                height: 133.63,
              ),
            ),
            SizedBox(
              height: 46,
            ),
            CustomeTitle(text: "Silahkan masuk dengan nomor\ntelkomsel kamu"),
            SizedBox(
              height: 24,
            ),
            CustomeTextFields(
              label: "Nomor Hp",
              controller: controller.phoneController,
              keyboardType: TextInputType.number,
              hint: "Cth. 08129011xxxx",
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Obx(
                  () => Checkbox(
                    value: controller.checkController.value,
                    activeColor: red,
                    onChanged: (value) => controller.checkController.toggle(),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: "Saya menyetujui ",
                        style: blackTextStyle,
                        children: [
                          TextSpan(
                              text: "syarat",
                              style:
                                  redTextStyle.copyWith(fontWeight: semibold)),
                          TextSpan(text: ", ", style: blackTextStyle),
                          TextSpan(
                              text: "ketentuan",
                              style:
                                  redTextStyle.copyWith(fontWeight: semibold)),
                          TextSpan(text: ", dan  ", style: blackTextStyle),
                          TextSpan(
                              text: "privasi",
                              style:
                                  redTextStyle.copyWith(fontWeight: semibold)),
                          TextSpan(text: " telkomsel", style: blackTextStyle),
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Obx(
              () => ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.checkController.value && controller.phoneController.value != '' ? red : gray),
                onPressed: () => Get.offAllNamed(Routes.OTP),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "MASUK",
                    style: controller.checkController.value && controller.phoneController.value != ''
                        ? whiteTextStyle
                        : grayDarkTextStyle,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                "Atau Masuk menggunakan",
                style: grayDarkTextStyle.copyWith(
                    fontWeight: medium, fontSize: 14, height: 1.8),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: Image.asset(
                      'assets/images/ic_fb_button.png',
                      height: 42,
                      width: 120,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2, color: fbColor),
                    backgroundColor: white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: Image.asset(
                      'assets/images/ic_twitter_button.png',
                      height: 42,
                      width: 120,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(width: 2, color: twitterColor),
                      backgroundColor: white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
