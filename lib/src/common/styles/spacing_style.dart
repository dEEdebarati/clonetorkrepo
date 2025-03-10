import 'package:flutter/material.dart';
import 'package:torganic/src/utils/constants/sizes.dart';

class AppSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace
  );

  // static const EdgeInsetsGeometry paddingWithStatusBarHeight = EdgeInsets.only(
  //     top: AppSizes.,
  //     left: AppSizes.defaultSpace,
  //     right: AppSizes.defaultSpace,
  //     bottom: AppSizes.defaultSpace
  // );
}
