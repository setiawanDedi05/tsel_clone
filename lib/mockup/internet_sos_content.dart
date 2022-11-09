import 'package:flutter/rendering.dart';
import 'package:my_tsel/shared/theme.dart';

List<TextSpan> internet_content = [
  TextSpan(text: 'Kamu dapat menggunakan ', style: blackTextStyle, children: [
    TextSpan(text: 'Internet SOS', style: blackTextStyle.copyWith(fontWeight: bold),),
    TextSpan(text: ' hanya ketika kuota internet Telkomsel kamu kosong.', style: blackTextStyle,),
  ]),
  TextSpan(text: 'Internet SOS', style: blackTextStyle.copyWith(fontWeight: bold), children: [
    TextSpan(text: ' hanya bisa digunakan untuk mengakses aplikasi MyTelkomsel.', style: blackTextStyle.copyWith(fontWeight: normal),),
  ]),
  TextSpan(text: 'Internet SOS', style: blackTextStyle.copyWith(fontWeight: bold), children: [
    TextSpan(text: ' tidak ada batas jumlah penggunaan bandwidth.', style: blackTextStyle.copyWith(fontWeight: normal),),
  ]),
  TextSpan(text: 'Batas waktu penggunaan ', style: blackTextStyle, children: [
    TextSpan(text: 'Internet SOS', style: blackTextStyle.copyWith(fontWeight: bold),),
    TextSpan(text: ' hanya dalam kurun waktu ', style: blackTextStyle,),
    TextSpan(text: '1 x 24 Jam (1 Hari).', style: blackTextStyle.copyWith(fontWeight: bold),),
  ]),
  TextSpan(text: 'Tagihan akan diberikan setelah Anda memiliki kuota internet Telkomsel.', style: blackTextStyle,),
  TextSpan(text: 'Batas waktu pelunasan tagihan penggunaan ', style: blackTextStyle, children: [
    TextSpan(text: 'Internet SOS', style: blackTextStyle.copyWith(fontWeight: bold),),
    TextSpan(text: ' selama ', style: blackTextStyle,),
    TextSpan(text: '2 x 24 Jam (2 Hari)', style: blackTextStyle.copyWith(fontWeight: bold),),
    TextSpan(text: '  terhitung dari penyerahan tagihan.', style: blackTextStyle,),
  ]),
  TextSpan(text: 'Jika tagihan belum dilunasi dalam waktu yang ditentukan akan dilakukan ', style: blackTextStyle, children: [
    TextSpan(text: 'pemotongan pada kuota internet yang tersedia', style: blackTextStyle.copyWith(fontWeight: bold),),
  ]),
  
];