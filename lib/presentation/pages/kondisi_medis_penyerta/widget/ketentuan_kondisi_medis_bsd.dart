import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';

import '../../../../config/theme/app_colors.dart';

class KetentuanKondisiMedisBsd extends StatelessWidget {
  const KetentuanKondisiMedisBsd({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        decoration: BoxDecoration(
            color: AppColors.neutral10,
            borderRadius: BorderRadius.circular(Sizes.p16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._keteranganSection(context),
            const Gap(Sizes.p20),
            ..._kategoriSection(context),
            const Gap(Sizes.p20),
            ..._kondisiSection(context),
          ],
        ),
      ),
    );
  }

  Widget _item(BuildContext context, String title, String value) {
    return Row(
      children: [
        Text('$title:',
            style: context.textTheme.bodyMedium?.bold
                .toColor(AppColors.neutral100)),
        const Gap(Sizes.p8),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.justify,
            style: context.textTheme.bodyMedium?.toColor(AppColors.neutral100),
          ),
        ),
      ],
    );
  }

  List<Widget> _keteranganSection(BuildContext context) {
    return [
      Text(
        'Keterangan:',
        style:
            context.textTheme.titleMedium?.bold.toColor(AppColors.neutral100),
      ),
      const Gap(Sizes.p8),
      _item(context, '1', 'Metode Kontrasepsi dapat digunakan setiap saat.'),
      const Gap(Sizes.p8),
      _item(context, '2', 'Metode Kontrasepsi dapat digunakan'),
      const Gap(Sizes.p8),
      _item(context, '3', 'Metode Kontrasepsi tidak direkomendasikan'),
      const Gap(Sizes.p8),
      _item(context, '4', 'Metode Kontrasepsi tidak dapat digunakan.'),
    ];
  }

  List<Widget> _kategoriSection(BuildContext context) {
    return [
      Text(
        'Kategori Untuk Vasektomi dan Tubektomi:',
        style:
            context.textTheme.titleMedium?.bold.toColor(AppColors.neutral100),
      ),
      const Gap(Sizes.p8),
      _item(
        context,
        'A',
        'Accept/Dapat Diterima (Tidak ada alasan medis untuk menolak sterilisasi).',
      ),
      const Gap(Sizes.p8),
      _item(
        context,
        'C',
        'Caution/Hati-hati 9 (Prosedur dapat dilakukan pada keadaan normal namun perlu persiapan ekstra dan hati-hati).',
      ),
      const Gap(Sizes.p8),
      _item(
        context,
        'D',
        'Delay/Tunda (Prosedur ditunda sampa kondisi dievaluasi dan di koreksi).',
      ),
      const Gap(Sizes.p8),
      _item(
        context,
        'S',
        'Special/Khusus (Prosedur harus dilakukan oleh operator yang berpengalaman dan peralatan harus lengkap dan tersedia untuk anestesi umum, dan harus dipikirkan regimen anestesi yang tepat).',
      ),
    ];
  }

  List<Widget> _kondisiSection(BuildContext context) {
    return [
      Text(
        'Kondisi:',
        style:
            context.textTheme.titleMedium?.bold.toColor(AppColors.neutral100),
      ),
      const Gap(Sizes.p8),
      _item(context, 'A',
          'Jika kondisi timbul saat menggunakan metode kontrasepsi ini, kontrasepsi tersebut dapat dilanjutkan selama pengobatan.'),
      const Gap(Sizes.p8),
      _item(context, 'B',
          'Jika kemungkinan sangat tinggi terhadap paparan gonore atau klamidia =3.'),
      const Gap(Sizes.p8),
      _item(context, 'C',
          'Jika riwayat PRD semua metode =1, termasuk AKDR. Pada sterilisasi riwayat PRD dengan kehamilan berikutnya = A, tanpa kehamilan berikutnya = C.'),
      const Gap(Sizes.p8),
      _item(context, 'D',
          'Jika kurang dari 3 minggu, tidak menyusui dan tidak ada faktor Tromboemboli Vena (TEV) lainnya = 3.'),
      const Gap(Sizes.p8),
      _item(context, 'E', 'Jika tidak menyusui = 1.'),
      const Gap(Sizes.p8),
      _item(context, 'F',
          'Jika 3 sampai kurang dari 6 minggu, tidak menyusui dan tidak ada faktor resiko TEV lainnya = 2, dengan faktor resiko = 3.'),
      const Gap(Sizes.p8),
      _item(context, 'G', 'Jika 6 minggu dan tidak menyusui =1.'),
      const Gap(Sizes.p8),
      _item(context, 'H',
          'Jika rongga uterus berubah menghambat proses pemasukan = 4.'),
      const Gap(Sizes.p8),
      _item(context, 'I',
          'Merujuk pada adenoma hepatoselular (jinak) atau karsinoma/hepatoma (maligna).'),
      const Gap(Sizes.p8),
      _item(context, 'J',
          'Jika adenoma KIK =3, jika karsinoma/ hepatoma KIK = 3/4.'),
      const Gap(Sizes.p8),
      _item(context, 'K', 'KIK =3.'),
      const Gap(Sizes.p8),
      _item(context, 'L',
          'Jika dilakukan saat pemberian terapi antikoagulan =2.'),
      const Gap(Sizes.p8),
      _item(context, 'M',
          'Jika kondisi terjadi saat menggunakan metode ini, pertimbangkan untuk merubah pada metode non-hormonal.'),
      const Gap(Sizes.p8),
      _item(context, 'N',
          'Faktor resiko: usia tua, merokok, diabetes, hipertensi, obesitas dan dislipidemia.'),
      const Gap(Sizes.p8),
      _item(context, 'O',
          'Jika tidak dapat mengukur tekanan darah dan tidak diketahui ada riwayat hipertensi, dapat menggunakan semua metode. Baik tekanan darah sistolik atau diastolik dapat saja meningkat.'),
      const Gap(Sizes.p8),
      _item(context, 'P',
          'Jika usia kurang dari 18 tahun dan obesitas DMPA/NET-EN =2.'),
      const Gap(Sizes.p8),
      _item(context, 'Q',
          'Untuk insulin-dependent dan non-insulin-dependent. Jika terdapat komplikasi atau durasi > 20 tahun, KOK/P/ CVK, KIK = 3/4; DMPA, NET-EN = 3.'),
      const Gap(Sizes.p8),
      _item(context, 'R',
          'Jika kurang dari 15 rokok/hari KIK = 2. Jika = 15 rokok/hari KOK/P/CVK =4.'),
      const Gap(Sizes.p8),
      _item(context, 'S',
          'Aura adalah gejala neurologis fokal, seperti cahaya kelap-kelip. Jika tidak ada aura dan usia kurang dari 35 KOK/P/CVK, KIK =2, PP =1.'),
      const Gap(Sizes.p8),
      _item(context, 'T',
          'Barbituat, carbamazepine, oxcarbazepine, phenytoin, primidone, topiramate dan lamotrigine.'),
      const Gap(Sizes.p8),
      _item(context, 'U',
          'Jika barbituat, carbamazepine, oxcarbazepine, phenytoin, primidone atau topiramate KIK =2.'),
      const Gap(Sizes.p8),
      _item(context, 'V', 'Jika lamotrigine =1.'),
      const Gap(Sizes.p8),
      _item(context, 'W', 'DMPA =1, NET-EN =2.'),
      const Gap(Sizes.p8),
      _item(context, 'X', 'KIK =2.'),
      const Gap(Sizes.p8),
      _item(context, 'Y',
          'Jika terapi antiretroviral dengan EFV, NVP, ATV/r, LPV/r, DRV/r, RTV: KOK/P/CVK, KIK, PP, NET-EN, Implan =2. DMPA =1. Untuk semua NRTI, ETR, RPV, RAL setiap metode =1. Lihat sampul untuk nama lengkap obat-obat tersebut.'),
      const Gap(Sizes.p8),
      _item(context, 'Z',
          'Jika WHO stadium 3 atau 4 (penyakit HIV klinis berat atau lanjut) AKDR =3.'),
    ];
  }
}
