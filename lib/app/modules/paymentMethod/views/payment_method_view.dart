import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/shared/theme.dart';

import '../controllers/payment_method_controller.dart';

class PaymentMethodView extends GetView<PaymentMethodController> {
  const PaymentMethodView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: const Text(
          'Metode Pembayaran',
          style: blackTextStyle,
        ),
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: black,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              BuildPackageChoosen(),
              BuildPaymentMyTelkomsel(),
              CustomeSeparator(),
              BuildPaymentEWallet(),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: gray,
                    spreadRadius: 5,
                    blurRadius: 2,
                    offset: Offset(0, 0.75),
                  ),
                ],
              ),
              width: Get.width,
              height: 120,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Pembayaran",
                        style: blackTextStyle.copyWith(fontWeight: bold),
                      ),
                      Text(
                        "Rp. 61.000",
                        style: redTextStyle.copyWith(fontWeight: bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: red,
                          padding: EdgeInsets.symmetric(horizontal: 12)),
                      onPressed: () {},
                      child: Center(
                        child: Text("KONFIRMASI & BAYAR"),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container BuildPaymentEWallet() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "E-Wallet",
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),
          ),
          SizedBox(
            height: 18,
          ),
          ListTile(
            leading: Image.asset(
              'assets/images/ic_gopay_logo.png',
              height: 24,
              width: 24,
            ),
            title: Text(
              "Gopay",
              style: blackTextStyle.copyWith(fontWeight: bold),
            ),
            subtitle: Text(
              "Rp. 700.000",
              style: grayDarkTextStyle,
            ),
            trailing: Radio(
              activeColor: red,
              value: "",
              groupValue: 'gopay',
              onChanged: (String? value) {
                print(value);
              },
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/images/ic_ovo.png',
              height: 24,
              width: 24,
            ),
            title: Text(
              "OVO",
              style: blackTextStyle.copyWith(fontWeight: bold),
            ),
            subtitle: Text(
              "Rp. 900.000",
              style: grayDarkTextStyle,
            ),
            trailing: Radio(
              activeColor: red,
              value: "",
              groupValue: 'gopay',
              onChanged: (String? value) {
                print(value);
              },
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/images/img_link_aja_logo.png',
              height: 24,
              width: 24,
            ),
            title: Text(
              "LinkAja",
              style: blackTextStyle.copyWith(fontWeight: bold),
            ),
            subtitle: Text(
              "Rp. 500.000.000",
              style: grayDarkTextStyle,
            ),
            trailing: Radio(
              activeColor: red,
              value: "",
              groupValue: 'pulsa',
              onChanged: (String? value) {
                print(value);
              },
            ),
          )
        ],
      ),
    );
  }

  Container BuildPaymentMyTelkomsel() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pembayaran di MyTelkomsel",
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),
          ),
          SizedBox(
            height: 18,
          ),
          ListTile(
            leading: Image.asset(
              'assets/images/ic_pulsa.png',
              height: 24,
              width: 24,
            ),
            title: Text(
              "Pulsa",
              style: blackTextStyle.copyWith(fontWeight: bold),
            ),
            subtitle: Text(
              "Rp. 500.000",
              style: grayDarkTextStyle,
            ),
            trailing: Radio(
              activeColor: red,
              value: "pulsa",
              groupValue: 'pulsa',
              onChanged: (String? value) {
                print(value);
              },
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/images/img_link_aja_logo.png',
              height: 24,
              width: 24,
            ),
            title: Text(
              "LinkAja",
              style: blackTextStyle.copyWith(fontWeight: bold),
            ),
            subtitle: Text(
              "Rp. 500.000.000",
              style: grayDarkTextStyle,
            ),
            trailing: Radio(
              activeColor: red,
              value: "",
              groupValue: 'pulsa',
              onChanged: (String? value) {
                print(value);
              },
            ),
          )
        ],
      ),
    );
  }

  Container BuildPackageChoosen() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
          border: Border.all(color: gray),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Combo OMG! 6.5 GB",
            style: blackTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "4.5 GB Internet + 2 GB OMG! + 60 SMS Tsel + 100 Mins Voice Tsel",
            style: grayDarkTextStyle,
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/ic_timer_red.png",
                width: 16,
                height: 16,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Masa aktif 30 Hari",
                style: redTextStyle.copyWith(fontWeight: bold),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CustomeSeparator extends StatelessWidget {
  const CustomeSeparator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: double.infinity,
      color: gray,
    );
  }
}
