import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/presentation/component/widget/wrapper/custom_wrapper.dart';
import 'package:klob_kb_apps/presentation/pages/about/component/profile_item_widget.dart';
import 'package:klob_kb_apps/presentation/pages/about/detail/ucapan_terimakasih_page.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        enableBackButton: true,
        title: 'Tentang Aplikasi',
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return CustomColumn(background: AppColors.neutral10, children: [
      ProfileItemWidget(
        title: 'Ucapan Terima Kasih',
        onTap: () => _navigateToUcapanTerimakasih(context),
        icon: AppIcons.lovely,
      ),
      const Divider(
        color: AppColors.neutral40,
        height: 1,
        indent: 16,
        endIndent: 16,
      ),
      ProfileItemWidget(
        title: 'Mitra Bestari',
        onTap: () => _navigateToMitraBestari(context),
        icon: AppIcons.mitra,
      ),
      const Divider(
        color: AppColors.neutral40,
        height: 1,
        indent: 16,
        endIndent: 16,
      ),
      ProfileItemWidget(
        title: 'Tentang Aplikasi',
        onTap: () => _navigateTotentangAplikasi(context),
        icon: AppIcons.infoCircle,
      ),
    ]);
  }

  void _navigateToUcapanTerimakasih(BuildContext context) {
    context.router.push(const UcapanTerimakasihRoute());
  }

  void _navigateToMitraBestari(BuildContext context) {
    context.router.push(const MitraBestariRoute());
  }

  void _navigateTotentangAplikasi(BuildContext context) {
    context.router.push(const TentangAplikasiRoute());
  }
}
