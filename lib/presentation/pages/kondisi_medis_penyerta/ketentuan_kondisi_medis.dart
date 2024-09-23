import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class KetentuanKondisiMedisPage extends StatelessWidget {
  const KetentuanKondisiMedisPage({super.key});

  static const String ketentuanMd = '''
  **Keterangan:**

**1:** Metode Kontrasepsi dapat digunakan setiap saat.

**2:** Metode Kontrasepsi dapat digunakan

**3:** Metode Kontrasepsi tidak direkomendasikan

**4:** Metode Kontrasepsi tidak dapat digunakan.
   ''';

  static const String ketentuanMd2 = '''
**Kategori Untuk Vasektomi dan Tubektomi:** 

**A:** Accept/Dapat Diterima (Tidak ada alasan medis untuk menolak sterilisasi). 

**C:** Caution/Hati-hati 9 (Prosedur dapat dilakukan pada keadaan normal namun perlu persiapan ekstra dan hati-hati). 

**D:** Delay/Tunda (Prosedur ditunda sampa kondisi dievaluasi dan di koreksi).   

**S:** Special/Khusus (Prosedur harus dilakukan oleh operator yang berpengalaman dan peralatan harus lengkap dan tersedia untuk anestesi umum, dan harus dipikirkan regimen anestesi yang tepat).

''';

  static const String ketentuanMd3 = '''
**Kondisi:** 

**A:** Jika kondisi timbul saat menggunakan metode kontrasepsi ini, kontrasepsi tersebut dapat dilanjutkan selama pengobatan 

**B:** Jika kemungkinan sangat tinggi terhadap paparan gonore atau klamidia =3 

**C:** Jika riwayat PRD semua metode =1, termasuk AKDR. Pada sterilisasi riwayat PRD dengan kehamilan berikutnya = A, tanpa kehamilan berikutnya = C 

**D:** Jika kurang dari 3 minggu, tidak menyusui dan tidak ada faktor Tromboemboli Vena (TEV) lainnya = 3 

**E:** Jika tidak menyusui = 1

**F:** Jika 3 sampai kurang dari 6 minggu, tidak menyusui dan tidak ada faktor resiko TEV lainnya = 2, dengan faktor resiko = 3 

**G:** Jika 6 minggu dan tidak menyusui =1 

**H:** Jika rongga uterus berubah menghambat proses pemasukan = 4 

**I:** Merujuk pada adenoma hepatoselular (jinak) atau karsinoma/hepatoma (maligna) 

**J:** Jika adenoma KIK =3, jika karsinoma/ hepatoma KIK = 3/4 

**K:** KIK =3 

**L:** Jika dilakukan saat pemberian terapi antikoagulan =2 

**M:** Jika kondisi terjadi saat menggunakan metode ini, pertimbangkan untuk merubah pada metode non-hormonal 

**N:** Faktor resiko: usia tua, merokok, diabetes, hipertensi, obesitas dan dislipidemia 

**O:** Jika tidak dapat mengukur tekanan darah dan tidak diketahui ada riwayat hipertensi, dapat menggunakan semua metode. Baik tekanan darah sistolik atau diastolik dapat saja meningkat. 

**P:** Jika usia kurang dari 18 tahun dan obesitas DMPA/NET-EN =2 

**Q:** Untuk insulin-dependent dan non-insulin-dependent. Jika terdapat komplikasi atau durasi > 20 tahun, KOK/P/ CVK, KIK = 3/4; DMPA, NET-EN = 3. 

**R:** Jika kurang dari 15 rokok/hari KIK = 2. Jika = 15 rokok/hari KOK/P/CVK =4. 

**S:** Aura adalah gejala neurologis fokal, seperti cahaya kelap-kelip. Jika tidak ada aura dan usia kurang dari 35 KOK/P/CVK, KIK =2, PP =1. 

**T:** Barbituat, carbamazepine, oxcarbazepine, phenytoin, primidone, topiramate dan lamotrigine.

**U:** Jika barbituat, carbamazepine, oxcarbazepine, phenytoin, primidone atau topiramate KIK =2. 

**V:** Jika lamotrigine =1. 

**W:** DMPA =1, NET-EN =2 

**X:** KIK =2 

**Y:** Jika terapi antiretroviral dengan EFV, NVP, ATV/r, LPV/r, DRV/r, RTV: KOK/P/CVK, KIK, PP, NET-EN, Implan =2. DMPA =1. Untuk semua NRTI, ETR, RPV, RAL setiap metode =1. Lihat sampul untuk nama lengkap obat-obat tersebut.   

**Z:** Jika WHO stadium 3 atau 4 (penyakit HIV klinis berat atau lanjut) AKDR =3
''';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Container(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        decoration: BoxDecoration(
            color: AppColors.neutral10,
            borderRadius: BorderRadius.circular(Sizes.p16)),
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p16, vertical: Sizes.p16),
        child: Column(
          children: [
            MarkdownBody(
              data: ketentuanMd,
              styleSheet: context.markdownStyleSheet,
            ),
            const Gap(20),
            MarkdownBody(
              data: ketentuanMd2,
              styleSheet: context.markdownStyleSheet,
            ),
            const Gap(20),
            MarkdownBody(
              data: ketentuanMd3,
              styleSheet: context.markdownStyleSheet,
            ),
          ],
        ),
      ),
    );
  }
}
