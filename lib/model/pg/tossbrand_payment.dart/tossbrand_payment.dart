import 'package:json_annotation/json_annotation.dart';

part 'tossbrand_payment.g.dart';

@JsonSerializable()
class TossBrandPayment {
  String? methodId;

  TossBrandPayment({this.methodId});

  factory TossBrandPayment.fromJson(Map<String, dynamic> json) =>
      _$TossBrandPaymentFromJson(json);

  Map<String, dynamic> toJson() => _$TossBrandPaymentToJson(this);
}
