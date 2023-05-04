import 'package:easy_localization/easy_localization.dart';

NumberFormat numberFormat = NumberFormat("000");

String metersFormat(int meters) {
  if (meters < 1000) {
    return "$meters ${'m'.tr()}";
  }
  return "${meters ~/ 1000} ${'km'.tr()} ${numberFormat.format(meters % 1000)} ${'m'.tr()}";
}
