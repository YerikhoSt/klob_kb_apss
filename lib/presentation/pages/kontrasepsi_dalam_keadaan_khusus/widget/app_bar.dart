import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';

class KontrasepsiDalamKeadaanKhususAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const KontrasepsiDalamKeadaanKhususAppBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return PrimaryAppBar(
      title: 'Kontrasepsi Dalam Keadaan Khusus',
      preferredSize: preferredSize,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Stack(
          children: [
            Container(
              height: 40,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.neutral30,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: TabBar(
                controller: tabController,
                dividerColor: Colors.transparent,
                tabs: const [
                  Tab(
                      child: Text(
                    'Kontrasepsi Darurat',
                    textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  )),
                  Tab(
                      child: Text(
                    'Kontrasepsi Pasca Kehamilan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 32);
}
