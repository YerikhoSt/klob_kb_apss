import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';

import '../../../../util/constants/sizes.dart';
import 'submenu_item.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final listSubMenu = [
      {
        'title': 'Langkah Konseling',
        'icon': AppIcons.icon,
        'onTap': () {},
      },
      {
        'title': 'Diagram Kriteria Kelayakan Medis',
        'icon': AppIcons.icon,
        'onTap': () {},
      },
      {
        'title': 'Penapisan Berdasarkan Kriteria Kelayakan Medis',
        'icon': AppIcons.icon,
        'onTap': () {},
      },
      {
        'title': 'Penapisan Kehamilan',
        'icon': AppIcons.icon,
        'onTap': () {},
      },
      {
        'title': 'Metode Kontrasepsi',
        'icon': AppIcons.icon,
        'onTap': () {},
      },
      {
        'title': 'Efektivitas Metode Kontrasepsi',
        'icon': AppIcons.icon,
        'onTap': () {},
      },
      {
        'title': 'Prosedur Sebelum Penggunaan Metode Kontrasepsi',
        'icon': AppIcons.icon,
        'onTap': () {},
      },
      {
        'title': 'Kontrasepsi Dalam Keadaan Khusus',
        'icon': AppIcons.icon,
        'onTap': () {},
      },
      {
        'title': 'Panduan',
        'icon': AppIcons.icon,
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
            (listSubMenu.length / 4).ceil(),
            (index) {
              int start = index * 4;
              int end = start + 4;
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
                          width: Sizes.screenWidth(context) / 4 - 20,
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
}
