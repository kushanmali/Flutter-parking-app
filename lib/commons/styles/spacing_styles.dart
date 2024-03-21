import 'package:flutter/material.dart';
import 'package:parking_app/utils/constants/sizes.dart';


class PSpacingStyle{
  
  static const EdgeInsetsGeometry paddingWithAppBarHeight =EdgeInsets.only(
    top: PSizes.appBarHeight,
    right: PSizes.defaultSpace,
    left: PSizes.defaultSpace,
    bottom: PSizes.defaultSpace,
  );
}