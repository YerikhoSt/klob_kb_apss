import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/widget/app_bar.dart';

@RoutePage()
class KondisiMedisPage extends StatelessWidget {
  const KondisiMedisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        KondisiMedisPenyertaRoute(),
        KetentuanKondisiMedisRoute(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          appBar: KondisiMedisAppBar(tabController: tabController),
          body: child,
        );
      },
    );
  }
}
