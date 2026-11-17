
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';


@freezed
class Order({
  required final int id,
  required final String title
}) with _$Order;