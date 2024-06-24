import 'package:flutter/material.dart';

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

class Gap {
  /// Constant gap widths
  static const SizedBox w2 = SizedBox(width: Sizes.p2);
  static const SizedBox w4 = SizedBox(width: Sizes.p4);
  static const SizedBox w8 = SizedBox(width: Sizes.p8);
  static const SizedBox w12 = SizedBox(width: Sizes.p12);
  static const SizedBox w16 = SizedBox(width: Sizes.p16);
  static const SizedBox w20 = SizedBox(width: Sizes.p20);
  static const SizedBox w24 = SizedBox(width: Sizes.p24);
  static const SizedBox w28 = SizedBox(width: Sizes.p28);
  static const SizedBox w32 = SizedBox(width: Sizes.p32);
  static const SizedBox w36 = SizedBox(width: Sizes.p36);
  static const SizedBox w40 = SizedBox(width: Sizes.p40);
  static const SizedBox w48 = SizedBox(width: Sizes.p48);
  static const SizedBox w56 = SizedBox(width: Sizes.p56);
  static const SizedBox w64 = SizedBox(width: Sizes.p64);
  static const SizedBox w72 = SizedBox(width: Sizes.p72);
  static const SizedBox w80 = SizedBox(width: Sizes.p80);

  /// Constant gap heights
  static const SizedBox h2 = SizedBox(height: Sizes.p2);
  static const SizedBox h4 = SizedBox(height: Sizes.p4);
  static const SizedBox h8 = SizedBox(height: Sizes.p8);
  static const SizedBox h12 = SizedBox(height: Sizes.p12);
  static const SizedBox h16 = SizedBox(height: Sizes.p16);
  static const SizedBox h20 = SizedBox(height: Sizes.p20);
  static const SizedBox h24 = SizedBox(height: Sizes.p24);
  static const SizedBox h28 = SizedBox(height: Sizes.p28);
  static const SizedBox h32 = SizedBox(height: Sizes.p32);
  static const SizedBox h36 = SizedBox(height: Sizes.p36);
  static const SizedBox h40 = SizedBox(height: Sizes.p40);
  static const SizedBox h48 = SizedBox(height: Sizes.p48);
  static const SizedBox h56 = SizedBox(height: Sizes.p56);
  static const SizedBox h64 = SizedBox(height: Sizes.p64);
  static const SizedBox h72 = SizedBox(height: Sizes.p72);
  static const SizedBox h80 = SizedBox(height: Sizes.p80);

  static SizedBox size({double? h, double? w}) => SizedBox(
        height: h,
        width: w,
      );
}

class GapSliver {
  /// Constant gap widths
  static const SliverToBoxAdapter w2 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p2));
  static const SliverToBoxAdapter w4 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p4));
  static const SliverToBoxAdapter w8 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p8));
  static const SliverToBoxAdapter w12 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p12));
  static const SliverToBoxAdapter w16 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p16));
  static const SliverToBoxAdapter w20 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p20));
  static const SliverToBoxAdapter w24 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p24));
  static const SliverToBoxAdapter w28 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p28));
  static const SliverToBoxAdapter w32 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p32));
  static const SliverToBoxAdapter w36 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p36));
  static const SliverToBoxAdapter w40 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p40));
  static const SliverToBoxAdapter w48 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p48));
  static const SliverToBoxAdapter w56 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p56));
  static const SliverToBoxAdapter w64 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p64));
  static const SliverToBoxAdapter w72 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p72));
  static const SliverToBoxAdapter w80 =
      SliverToBoxAdapter(child: SizedBox(width: Sizes.p80));

  /// Constant gap heights
  static const SliverToBoxAdapter h2 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p2));
  static const SliverToBoxAdapter h4 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p4));
  static const SliverToBoxAdapter h8 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p8));
  static const SliverToBoxAdapter h12 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p12));
  static const SliverToBoxAdapter h16 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p16));
  static const SliverToBoxAdapter h20 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p20));
  static const SliverToBoxAdapter h24 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p24));
  static const SliverToBoxAdapter h28 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p28));
  static const SliverToBoxAdapter h32 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p32));
  static const SliverToBoxAdapter h36 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p36));
  static const SliverToBoxAdapter h40 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p40));
  static const SliverToBoxAdapter h48 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p48));
  static const SliverToBoxAdapter h56 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p56));
  static const SliverToBoxAdapter h64 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p64));
  static const SliverToBoxAdapter h72 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p72));
  static const SliverToBoxAdapter h80 =
      SliverToBoxAdapter(child: SizedBox(height: Sizes.p80));

  static SliverToBoxAdapter size({double? h, double? w}) => SliverToBoxAdapter(
        child: SizedBox(
          height: h,
          width: w,
        ),
      );
}
