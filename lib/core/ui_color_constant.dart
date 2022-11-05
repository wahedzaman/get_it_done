import 'package:GID/core/ui_utils.dart';
import 'package:flutter/material.dart';

const String testColor = "#30588c";
const String royalBlueDarkColor = "#0B122F";
const String brandColor = "#A2DEA8";
const String brandLightColor = "#9AFEA5";
const String brandDarkColor = "#349d71";

const String mutedGreenBlueColor = "#247782";
const String mutedRoyalBlueColor = "#30588c";
const String mutedBlueColor = "#246682";

const String greyColor = "#C4C4C4";
const String greyLight = "#E9ECF2";
const String greyDark = "#85949F";

dynamic getBackgroundColor() {
  return hexToColor(greyLight);
}

Color getBrandColor() {
  return hexToColor(brandColor);
}

Color getButtonColor() {
  return hexToColor(royalBlueDarkColor);
}
