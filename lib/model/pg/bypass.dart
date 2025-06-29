import 'package:json_annotation/json_annotation.dart';
import 'package:portone_flutter/model/pg/danal/danal.dart';
import 'package:portone_flutter/model/pg/daou/daou.dart';
import 'package:portone_flutter/model/pg/settle/settle.dart';
import 'package:portone_flutter/model/pg/tosspayments/tosspayments.dart';

import 'tossbrand_payment.dart/tossbrand_payment.dart';

part 'bypass.g.dart';

@JsonSerializable()
class Bypass {
  bool? isCulturalExpense;
  String? cashReceiptType;

  // https://guide.portone.io/aad7f7a4-366b-46fc-8e59-f1d79c986b3e
  @JsonKey(name: "acceptmethod")
  String? acceptMethod;
  @JsonKey(name: "P_RESERVED")
  String? pReserved;

  Daou? daou;
  Tosspayments? tosspayments;
  Settle? settle;
  Danal? danal;

  @JsonKey(name: "toss_brandpay")
  TossBrandPayment? tossBrandPayment;

  Bypass({
    this.isCulturalExpense,
    this.cashReceiptType,
    this.acceptMethod,
    this.pReserved,
    this.daou,
    this.tosspayments,
    this.settle,
    this.danal,
    this.tossBrandPayment,
  });

  factory Bypass.fromJson(Map<String, dynamic> json) => _$BypassFromJson(json);

  Map<String, dynamic> toJson() => _$BypassToJson(this);
}
