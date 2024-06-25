import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// Constant sizes to be used in the app (paddings, gaps, rounded corners etc.)
class Sizes {
  static const double p2 = 2;
  static const double p4 = 4;
  static const double p8 = 8;
  static const double p12 = 12;
  static const double p16 = 16;
  static const double p20 = 20;
  static const double p24 = 24;
  static const double p28 = 28;
  static const double p32 = 32;
  static const double p36 = 36;
  static const double p40 = 40;
  static const double p48 = 48;
  static const double p56 = 56;
  static const double p64 = 64;
  static const double p72 = 72;
  static const double p80 = 80;
  static const double p96 = 96;

  static MediaQueryData mediaQueryData(BuildContext context) =>
      MediaQuery.of(context);

  static double screenWidth(BuildContext context) =>
      mediaQueryData(context).size.width;
  static double screenHeight(BuildContext context) =>
      mediaQueryData(context).size.height;

  static double blockSizeHorizontal(BuildContext context) =>
      screenWidth(context) / 100;
  static double blockSizeVertical(BuildContext context) =>
      screenHeight(context) / 100;

  static double _safeAreaHorizontal(BuildContext context) =>
      blockSizeHorizontal(context) * 10;
  static double _safeAreaVertical(BuildContext context) =>
      blockSizeVertical(context) * 10;

  static double safeBlockHorizontal(BuildContext context) =>
      (_safeAreaHorizontal(context) / 100) * 10;
  static double safeBlockVertical(BuildContext context) =>
      (_safeAreaVertical(context) / 100) * 10;

  static EdgeInsets viewInsets(BuildContext context) =>
      mediaQueryData(context).viewInsets;

  static double paddingTop(BuildContext context) =>
      mediaQueryData(context).padding.top;
  static double paddingBottom(BuildContext context) =>
      mediaQueryData(context).padding.bottom;
}

class GapSizes {
  /// Constant gap widths
  static const Gap w2 = Gap(Sizes.p2);
  static const Gap w4 = Gap(Sizes.p4);
  static const Gap w8 = Gap(Sizes.p8);
  static const Gap w12 = Gap(Sizes.p12);
  static const Gap w16 = Gap(Sizes.p16);
  static const Gap w20 = Gap(Sizes.p20);
  static const Gap w24 = Gap(Sizes.p24);
  static const Gap w28 = Gap(Sizes.p28);
  static const Gap w32 = Gap(Sizes.p32);
  static const Gap w36 = Gap(Sizes.p36);
  static const Gap w40 = Gap(Sizes.p40);
  static const Gap w48 = Gap(Sizes.p48);
  static const Gap w56 = Gap(Sizes.p56);
  static const Gap w64 = Gap(Sizes.p64);
  static const Gap w72 = Gap(Sizes.p72);
  static const Gap w80 = Gap(Sizes.p80);

  static Gap size({double? size}) => Gap(size ?? 0);
}

class GapSliver {
  static const SliverToBoxAdapter w2 = SliverToBoxAdapter(child: Gap(Sizes.p2));
  static const SliverToBoxAdapter w4 = SliverToBoxAdapter(child: Gap(Sizes.p4));
  static const SliverToBoxAdapter w8 = SliverToBoxAdapter(child: Gap(Sizes.p8));
  static const SliverToBoxAdapter w12 =
      SliverToBoxAdapter(child: Gap(Sizes.p12));
  static const SliverToBoxAdapter w16 =
      SliverToBoxAdapter(child: Gap(Sizes.p16));
  static const SliverToBoxAdapter w20 =
      SliverToBoxAdapter(child: Gap(Sizes.p20));
  static const SliverToBoxAdapter w24 =
      SliverToBoxAdapter(child: Gap(Sizes.p24));
  static const SliverToBoxAdapter w28 =
      SliverToBoxAdapter(child: Gap(Sizes.p28));
  static const SliverToBoxAdapter w32 =
      SliverToBoxAdapter(child: Gap(Sizes.p32));
  static const SliverToBoxAdapter w36 =
      SliverToBoxAdapter(child: Gap(Sizes.p36));
  static const SliverToBoxAdapter w40 =
      SliverToBoxAdapter(child: Gap(Sizes.p40));
  static const SliverToBoxAdapter w48 =
      SliverToBoxAdapter(child: Gap(Sizes.p48));
  static const SliverToBoxAdapter w56 =
      SliverToBoxAdapter(child: Gap(Sizes.p56));
  static const SliverToBoxAdapter w64 =
      SliverToBoxAdapter(child: Gap(Sizes.p64));
  static const SliverToBoxAdapter w72 =
      SliverToBoxAdapter(child: Gap(Sizes.p72));
  static const SliverToBoxAdapter w80 =
      SliverToBoxAdapter(child: Gap(Sizes.p80));

  static SliverToBoxAdapter size({double? size, double? w}) =>
      SliverToBoxAdapter(
        child: Gap(size ?? 0),
      );
}
