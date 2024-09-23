import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/presentation/pages/kontrasepsi_dalam_keadaan_khusus/widget/app_bar.dart';

@RoutePage()
class KontrasepsiDalamKeadaanKhususPage extends StatelessWidget {
  const KontrasepsiDalamKeadaanKhususPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        KontrasepsiDaruratRoute(),
        KontrasepsiPascaKehamilanRoute()
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          appBar: KontrasepsiDalamKeadaanKhususAppBar(
            tabController: tabController,
          ),
          body: child,
        );
      },
    );
  }
}
