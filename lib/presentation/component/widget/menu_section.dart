import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';

import '../../../util/constants/sizes.dart';
import 'submenu_item.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final listSubMenu = [
      {
        'title': 'Langkah Konseling',
        'icon': AppIcons.imagePlaceholder,
        'onTap': () => _navigateToLangkahKonseling(context),
      },
      {
        'title': 'Diagram Kriteria Kelayakan Medis',
        'icon': AppIcons.imagePlaceholder,
        'onTap': () {},
      },
      {
        'title': 'Penapisan Berdasarkan Kriteria Kelayakan Medis',
        'icon': AppIcons.imagePlaceholder,
        'onTap': () => _navigateToKondisiMedisPenyerta(context),
      },
      {
        'title': 'Penapisan Kehamilan',
        'icon': AppIcons.imagePlaceholder,
        'onTap': () => _navigateToPenapisanKehamilan(context),
      },
      {
        'title': 'Metode Kontrasepsi',
        'icon': AppIcons.imagePlaceholder,
        'onTap': () => _navigateToMetodeKontrasepsi(context),
      },
      {
        'title': 'Efektivitas Metode Kontrasepsi',
        'icon': AppIcons.imagePlaceholder,
        'onTap': () => _navigateToEfektivitasMetodeKontrasepsi(context),
      },
      {
        'title': 'Prosedur Sebelum Penggunaan Metode Kontrasepsi',
        'icon': AppIcons.imagePlaceholder,
        'onTap': () => _navigateToProsedurSebelumPenggunaan(context),
      },
      {
        'title': 'Kontrasepsi Dalam Keadaan Khusus',
        'icon': AppIcons.imagePlaceholder,
        'onTap': () {},
      },
      {
        'title': 'Panduan',
        'icon': AppIcons.imagePlaceholder,
        'onTap': () {},
      },
    ];

    return Container(
      color: AppColors.neutral10,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.p12,
          horizontal: Sizes.p8,
        ),
        child: Column(
          children: List.generate(
            (listSubMenu.length / 3).ceil(),
            (index) {
              int start = index * 3;
              int end = start + 3;
              return Padding(
                padding: index == 0
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(top: Sizes.p12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: listSubMenu
                      .sublist(
                        start,
                        end > listSubMenu.length ? listSubMenu.length : end,
                      )
                      .map(
                        (element) => Container(
                          alignment: Alignment.center,
                          width: Sizes.screenWidth(context) / 3 - 28,
                          child: SubmenuItem(
                            title: element['title'] as String,
                            iconPath: element['icon'] as String,
                            onTap: element['onTap']! as VoidCallback,
                          ),
                        ),
                      )
                      .toList(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _navigateToLangkahKonseling(BuildContext context) {
    context.router.push(const LangkahKonselingRoute());
  }

  void _navigateToKondisiMedisPenyerta(BuildContext context) {
    context.router.push(const KondisiMedisRoute());
  }

  void _navigateToPenapisanKehamilan(BuildContext context) {
    context.router.push(const PenapisanKehamilanRoute());
  }

  void _navigateToMetodeKontrasepsi(BuildContext context) {
    context.router.push(const MetodeKontrasepsiRoute());
  }

  void _navigateToEfektivitasMetodeKontrasepsi(BuildContext context) {
    context.router.push(const EfektivitasMetodeKontrasepsiRoute());
  }

  void _navigateToProsedurSebelumPenggunaan(BuildContext context) {
    context.router.push(const ProsedurSebelumPenggunaanRoute());
  }
}
