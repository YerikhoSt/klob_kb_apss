import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/presentation/component/scroll_view/custom_single_child_scroll_view_wrapper.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/widget/metode_kontrasepsi_item.dart';

@RoutePage()
class MetodeKontrasepsiPage extends StatelessWidget {
  const MetodeKontrasepsiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Metode Kontrasepsi',
      ),
      body: _body(context),
    );
  }

  CustomSingleChildScrollViewWrapper _body(BuildContext context) {
    return CustomSingleChildScrollViewWrapper(
      children: [
        MetodeKontrasepsiItem(
          title: 'Kontrasepsi Oral Kombinasi',
          onPressed: () => _navigateToCombinedHormonal(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Pil Progestin',
          onPressed: () => _navigateToProgrestogenOnlyPill(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Pil Kontrasepsi Darurat',
          onPressed: () => _navigateToKontrasepsiDarurat(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Injeksi Bulanan',
          onPressed: () => _navigateToInjeksiBulanan(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Koyo Kombinasi',
          onPressed: () => _navigateToKoyoKombinasi(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Cincin Vagina Kombinasi',
          onPressed: () => _navigateToCincinVagina(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Implan',
          onPressed: () => _navigateToImplan(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Alat Kontrasepsi Dalam Rahim-Copper',
          onPressed: () => _navigateToAkdrCopper(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Alat Kontrasepsi Dalam Rahim-LNG',
          onPressed: () => _navigateToAkdrLNG(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Tubektomi',
          onPressed: () => _navigateToFemaleSterillization(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Vasektomi',
          onPressed: () => _navigateToVasektomi(context),
        ),
      ],
    );
  }

  void _navigateToCombinedHormonal(BuildContext context) {
    context.router.push(const KontrasepsiOralKombinasiRoute());
  }

  void _navigateToFemaleSterillization(BuildContext context) {
    context.router.push(const TubektomiRoute());
  }

  void _navigateToKontrasepsiDarurat(BuildContext context) {
    context.router.push(const PilKontrasepsiDaruratRoute());
  }

  void _navigateToProgrestogenOnlyPill(BuildContext context) {
    context.router.push(const PilProgestinRoute());
  }

  void _navigateToInjeksiBulanan(BuildContext context) {
    context.router.push(const InjeksiBulananRoute());
  }

  void _navigateToVasektomi(BuildContext context) {
    context.router.push(const VasektomiRoute());
  }

  void _navigateToAkdrLNG(BuildContext context) {
    context.router.push(const AkdrLngRoute());
  }

  void _navigateToAkdrCopper(BuildContext context) {
    context.router.push(const AkdrCopperRoute());
  }

  void _navigateToImplan(BuildContext context) {
    context.router.push(const ImplanRoute());
  }

  void _navigateToCincinVagina(BuildContext context) {
    context.router.push(const CincinVaginaRoute());
  }

  void _navigateToKoyoKombinasi(BuildContext context) {
    context.router.push(const KoyoKombinasiRoute());
  }
}
