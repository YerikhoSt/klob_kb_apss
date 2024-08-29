import 'package:auto_route/auto_route.dart';
import 'package:klob_kb_apps/presentation/component/main_wrapper/main_wrapper_page.dart';
import 'package:klob_kb_apps/presentation/pages/efektivitas_metode_kontrasepsi/efektivitas_metode_kontrasepsi_page.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/kondisi_medis_penyerta_page.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/penapisan_kehamilan_page.dart';
import 'package:klob_kb_apps/presentation/pages/prosedur_sebelum_penggunaan/prosedur_sebelum_penggunaan_page.dart';

import '../../presentation/pages/home/home_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(page: MainWrapperRoute.page, path: '/', initial: true),
        AutoRoute(page: HomeRoute.page, path: '/', initial: true),
        AutoRoute(page: KondisiMedisPenyertaRoute.page, path: '/kondisimedis'),
        AutoRoute(
            page: EfektivitasMetodeKontrasepsiRoute.page,
            path: '/efektivitasmetodekontrasepsi'),
        AutoRoute(
          page: PenapisanKehamilanRoute.page,
          path: '/penapisankehamilan',
        ),
        AutoRoute(
          page: ProsedurSebelumPenggunaanRoute.page,
          path: '/prosedursebelumpenggunaan',
        ),
      ];
}
