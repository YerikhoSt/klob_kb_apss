import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:klob_kb_apps/presentation/pages/efektivitas_metode_kontrasepsi/efektivitas_metode_kontrasepsi_page.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/ketentuan_kondisi_medis.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/kondisi_medis_page.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/kondisi_medis_penyerta_detail_page.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/kondisi_medis_penyerta_page.dart';
import 'package:klob_kb_apps/presentation/pages/kontrasepsi_dalam_keadaan_khusus/kontrasepsi_dalam_keadaan_khusus_page.dart';
import 'package:klob_kb_apps/presentation/pages/kontrasepsi_dalam_keadaan_khusus/kontrasepsi_darurat_page.dart';
import 'package:klob_kb_apps/presentation/pages/kontrasepsi_dalam_keadaan_khusus/kontrasepsi_pasca_kehamilan_page.dart';
import 'package:klob_kb_apps/presentation/pages/langkah_konseling/langkah_konseling_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/akdr_copper_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/akdr_lng_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/cincin_vagina_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/implan_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/injeksi_bulanan_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/injeksi_progestin_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/kontrasepsi_oral_kombianasi_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/koyo_kombinasi_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/pil_kontrasepsi_darurat_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/tubektomi_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/pil_progestin.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/detail_page/vasektomi_page.dart';
import 'package:klob_kb_apps/presentation/pages/metode_kontrasepsi/metode_kontrasepsi_page.dart';
import 'package:klob_kb_apps/presentation/pages/penapisan_kehamilan/penapisan_kehamilan_page.dart';
import 'package:klob_kb_apps/presentation/pages/photo_detail/photo_detail_page.dart';
import 'package:klob_kb_apps/presentation/pages/prosedur_sebelum_penggunaan/prosedur_sebelum_penggunaan_page.dart';
import 'package:klob_kb_apps/presentation/pages/splash/splash_page.dart';

import '../../presentation/pages/home/home_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(page: MainWrapperRoute.page, path: '/', initial: true),
        AutoRoute(page: SplashRoute.page, path: '/', initial: true),
        AutoRoute(page: HomeRoute.page, path: '/home'),
        AutoRoute(
            page: KondisiMedisPenyertaDetailRoute.page,
            path: '/kondisimedisdetail'),
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
        AutoRoute(
          page: MetodeKontrasepsiRoute.page,
          path: '/metodekontrasepsi',
        ),
        AutoRoute(
          page: LangkahKonselingRoute.page,
          path: '/langkahkonseling',
        ),
        AutoRoute(
          page: KontrasepsiOralKombinasiRoute.page,
          path: '/metodekontrasepsi/oralkombinasi',
        ),
        AutoRoute(
          page: TubektomiRoute.page,
          path: '/metodekontrasepsi/tubektomi',
        ),
        AutoRoute(
          page: InjeksiProgestinRoute.page,
          path: '/metodekontrasepsi/injeksiprogestin',
        ),
        AutoRoute(
          page: PilKontrasepsiDaruratRoute.page,
          path: '/metodekontrasepsi/pilkontrasepsidarurat',
        ),
        AutoRoute(
          page: InjeksiBulananRoute.page,
          path: '/metodekontrasepsi/injeksibulanan',
        ),
        AutoRoute(
          page: AkdrCopperRoute.page,
          path: '/metodekontrasepsi/akdrcopper',
        ),
        AutoRoute(
          page: AkdrLngRoute.page,
          path: '/metodekontrasepsi/akdrlng',
        ),
        AutoRoute(
          page: CincinVaginaRoute.page,
          path: '/metodekontrasepsi/cincinvagina',
        ),
        AutoRoute(
          page: ImplanRoute.page,
          path: '/metodekontrasepsi/implan',
        ),
        AutoRoute(
          page: KoyoKombinasiRoute.page,
          path: '/metodekontrasepsi/koyokombinasi',
        ),
        AutoRoute(
          page: VasektomiRoute.page,
          path: '/metodekontrasepsi/vasektomi',
        ),
        AutoRoute(
          page: PilProgestinRoute.page,
          path: '/metodekontrasepsi/pilprogestin',
        ),
        AutoRoute(
          page: PhotoDetailRoute.page,
          path: '/photodetail',
        ),
        AutoRoute(
            page: KondisiMedisRoute.page,
            path: '/kondisimedis',
            children: [
              AutoRoute(
                page: KondisiMedisPenyertaRoute.page,
                path: 'kondisimedispenyerta',
              ),
              AutoRoute(
                page: KetentuanKondisiMedisRoute.page,
                path: 'ketentuankondisimedis',
              ),
            ]),
        AutoRoute(
            page: KontrasepsiDalamKeadaanKhususRoute.page,
            path: '/kontrasepsidalamkeadaankhusus',
            children: [
              AutoRoute(
                page: KontrasepsiDaruratRoute.page,
                path: 'kontrasepsidarurat',
              ),
              AutoRoute(
                page: KontrasepsiPascaKehamilanRoute.page,
                path: 'kontrasepsipascakehamilan',
              ),
            ]),
      ];
}
