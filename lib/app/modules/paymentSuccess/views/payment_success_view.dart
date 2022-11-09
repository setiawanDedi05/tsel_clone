import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/shared/theme.dart';

import '../controllers/payment_success_controller.dart';

class PaymentSuccessView extends GetView<PaymentSuccessController> {
  const PaymentSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        children: [
          buildCheckIcon(),
          SizedBox(
            height: 52,
          ),
          Text(
            "Pembayaran Berhasil",
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 24),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Pembayaran paket internet telah berhasil. Kami \nakan memberitahu kamu jika paket sudah \ndiaktifkan.",
            style: grayDarkTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 32,
          ),
          BuildInternetPackageChoosen(),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "NO TRANSAKSI",
                  style: blackTextStyle,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "A3012005123095554710745810",
                      style: blackTextStyle,
                    ),
                    Container(
                      child: Icon(Icons.copy_sharp),
                    )
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: red, maximumSize: Size(335, 42)),
                  onPressed: () {},
                  child: Container(
                    width: Get.width,
                    padding: EdgeInsets.all(12),
                    child: Text(
                      "DETAIL TRANSAKSI",
                      textAlign: TextAlign.center,
                      style: whiteTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
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
                      "LIHAT PAKET",
                      textAlign: TextAlign.center,
                      style: redTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
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
                      "KEMBALI KE BERANDA",
                      textAlign: TextAlign.center,
                      style: redTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container BuildInternetPackageChoosen() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 46),
      padding: EdgeInsets.all(16),
      height: 140,
      width: 285,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: gray)),
      child: Column(
        children: [
          Text(
            "PAKET INTERNET",
            style: grayDarkTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Combo OMG! 6.5 GB",
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "4.5 GB Internet + 2 GB OMG! + 60 SMS Tsel + 100 Mins Voice Tsel",
            style: grayDarkTextStyle,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Container buildCheckIcon() {
    return Container(
      margin: EdgeInsets.only(top: 52 ),
      height: 160,
      width: 160,
      decoration:
          BoxDecoration(color: red.withOpacity(0.1), shape: BoxShape.circle),
      child: Center(
        child: Icon(
          Icons.check_circle,
          color: red,
          size: 72,
        ),
      ),
    );
  }
}
