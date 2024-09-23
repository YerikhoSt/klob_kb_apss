import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class KontrasepsiDaruratPage extends StatelessWidget {
  const KontrasepsiDaruratPage({super.key});

  static const String kontrasepsiDaruratMd1 = '''
***Indikasi Kontrasepsi Darurat:***

Digunakan dalam 5 hari pasca senggama yang tidak terlindung dengan kontrasepsi yang tepat dan konsisten. Semakin cepat minum pil kontrasepsi darurat, semakin efektif.

* **Perkosaan**  
* **Tanpa menggunakan kontrasepsi**  
* **Penggunaan kontrasepsi yang TIDAK TEPAT DAN TIDAK KONSISTEN**  
  * Kondom tidak digunakan engan benar, terlepas atau bocor  
  * Tidak tepat menggunaan metode alami  
  * Gagal putus senggama karena terlanjur ejakulasi  
  * Klien tidak minum 3 atau lebih pil kombinasi atau baru mulai 3 hari atau lebih  
  * AKDR lepas  
  * Klien terlambat suntik DMPA lebih dari 4 minggu atau terlambat suntuk NET-EN lebih dari 2 minggu, atau terlambat suntik kombinasi lebih dari 7 hari.

**Formulasi dan dosis Pil Kontrasepsi Darurat**  
\- Gambar \-

* **Jumlah pil yang banyaj, namun aman**  
  **LNG \= levonorgestrel EE \= ethinyl estradiol**  
  **Ingat pencantuman kadar obat dinyatakan dalam atuan milligram (mg), microgram (μg atau mcg)**

**Pil Kontrasepsi Darurat pada Beberapa Kondisi Medis**  
\-GAMBAR

KPK \= Kontrasepsi Pil Kombinasi; LNG \= levonorgestrel; UPA \= Ulipristal asetat; NA \= Not Applicable (Tidak dapat diterapkan)

**AKDR Copper untuk Kontrasepsi Darurat (AKDR-Cu)**

Metode ini sangat efektif untuk mencegah kehamilan, metode ini dapat dipakai dalam 5 hari pasca senggama yang tidak terlindungi sebagai kontrasepsi darurat. Namun, Ketika Waktu ovulasi dapat diprediksi, AKDR-Cu dapat dimasukkan lebih dari 5 hari setelah ovulasi.

Kriteria kelayakan untuk insersi AKDR-Cu secara umum juga dapat diterapkan untuk insersi AKDR-Cu sebagai kontrasepsi darurat.

\-GAMBAR-  

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
              data: kontrasepsiDaruratMd1,
              styleSheet: context.markdownStyleSheet,
            ),
            // const Gap(20),
            // MarkdownBody(
            //   data: ketentuanMd2,
            //   styleSheet: context.markdownStyleSheet,
            // ),
            // const Gap(20),
            // MarkdownBody(
            //   data: ketentuanMd3,
            //   styleSheet: context.markdownStyleSheet,
            // ),
          ],
        ),
      ),
    );
  }
}
