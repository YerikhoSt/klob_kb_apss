import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/presentation/component/scroll_view/custom_single_child_scroll_view_wrapper.dart';
import 'package:klob_kb_apps/presentation/component/widget/wrapper/card_wrapper.dart';
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
          title: 'Combined hormonal contraceptives',
          onPressed: () => _navigateToCombinedHormonal(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Progestogen-only pills',
          onPressed: () => _navigateToProgrestogenOnlyPill(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Progestogen-only injectables',
          onPressed: () => _navigateToProgestogenInjectables(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Implants',
          onPressed: () {},
        ),
        MetodeKontrasepsiItem(
          title: 'Levenorgestrel IUD',
          onPressed: () {},
        ),
        MetodeKontrasepsiItem(
          title: 'Copper intrauterine device',
          onPressed: () {},
        ),
        MetodeKontrasepsiItem(
          title: 'Barrier methods',
          onPressed: () {},
        ),
        MetodeKontrasepsiItem(
          title: 'Lactational amenorrhoea method',
          onPressed: () {},
        ),
        MetodeKontrasepsiItem(
          title: 'Female steerilization',
          onPressed: () => _navigateToFemaleSterillization(context),
        ),
        MetodeKontrasepsiItem(
          title: 'Male sterilization (vasectomy)',
          onPressed: () {},
        ),
      ],
    );
  }

  void _navigateToCombinedHormonal(BuildContext context) {
    context.router.push(const CombinedHormonalRoute());
  }

  void _navigateToFemaleSterillization(BuildContext context) {
    context.router.push(const FemaleSterillizationRoute());
  }

  void _navigateToProgestogenInjectables(BuildContext context) {
    context.router.push(const ProgestogenInjectablesRoute());
  }

  void _navigateToProgrestogenOnlyPill(BuildContext context) {
    context.router.push(const ProgrestogenOnlyPillsRoute());
  }
}
