import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class AkdrLngPage extends StatelessWidget {
  const AkdrLngPage({super.key});

  static const String akdrLngMd1 = '''
***Alat Kontrasepsi Dalam Rahim – LNG***

Alat kontrasepsi dalam rahim – levonorgestrel merupakan alat kontrasepsi berbentuk huruf T dari bahan plastik yang secara terus menerus melepaskan sejumlah kecil levonorgestrel setiap hari. (Levonorgestrel adalah progestin yang secara luas digunakan dalam implan dan pil kontrasepsi oral).

Petugas kesehatan yang terlatih secara khusus memasukan AKDR-LNG kedalam rahim wanita melalui vagina dan serviks. Bekerja secara utama dengan menekan pertumbuhan lapisan uterus (endometrium).

***Kapan Dapat Mulai Menggunakan AKDR-LNG***

**PENTING:** Pada banyak kasus seorang wanita dapat mulai menggunakan AKDR-LNG kapanpun ia yakin tidak hamil. Untuk memastikan klien tidak hamil, gunakan Ceklis Penapisan Kehamilan

| Situasi | Kapan Memulai |
| ----- | ----- |
| **Memiliki siklus menstruasi atau beralih dari metode nonhormonal**  | **AKDR-LNG dapat dipasang kapanpun klien inginkan**  Jika AKDR dipasang dalam 7 hari setelah mulainya menstruasi, tidak perlu menggunakan metode cadangan. Jika lebih dari 7 hari setelah mulainya menstruasi, AKDR dapat dipasang kapan pun selama klien yakin tidak hamil. Klien memerlukan metode cadangan selama 7 hari pertama setelah insersi.  |
| **Beralih dari Metode Hormonal** |  Segera, jika ia telah menggunakan metode sebelumnya secara konsisten dan benar atau jika klien yakin ia tidak hamil. Tidak perlu menunggu periode menstruasi berikutnya. Tidak perlu metode cadangan. Jika klien beralih dari injeksi, AKDR-LNG dapat dipasang pada saat injeksi ulangan seharusnya diberikan. Klien memerlukan metode cadangan selama 7 hari pertama setelah pemasangan AKDR-LNG. |
| **Segera setelah melahirkan**  | Jika tidak menyusui, kapanpun dalam 48 jam setelah melahirkan. (Tenaga kesehatan membutuhkan pelatihan khusus untuk insersi pasca persalinan). Setelah 48 jam, tunda sampai setidaknya 4 minggu. Jika menyusui, tunda insersi AKDR-LNG sampai 4 minggu pasca melahirkan.  |
| **Menyusui secara eksklusif atau hampir ekskulusif** |  |
| Kurang dari 6 bulan setelah melahirkan | Jika klien melahirkan kurang dari 4 minggu yang lalu, tunda insersi sampai setidaknya 4 minggu setelah melahirkan. Jika menstruasi bulanan belum kembali, AKDR-LNG dapat dipasang kapanpun di antara 4 minggu sampai 6 bulan. Tidak perlu metode cadangan. Jika menstruasi bulanan sudah kembali, AKDR-LNG dapat dipasang seperti disarankan pada wanita yang memiliki siklus menstruasi  |
| Lebih dari 6 bulan setelah melahirkan | Jika klien belum mendapat menstruasi bulanan, AKDR-LNG dapat dipasang kapan pun jika yakin ia tidak hamil. Klien memerlukan metode cadangan selama 7 hari setelah insersi AKDR. Jika klien sudah mendapat menstruasi bulanannya, AKDR-LNG dapat dipasang seperti disarankan pada wanita yang memiliki siklus menstruasi. |
| **Menyusui secara parsial atau tidak menyusui** |  |
| Kurang dari 4 minggu setelah melahirkan | Jika belum mendapatkan menstruasi bulanan, AKDR-LNG dapat dipasang jika dapat ditetapkan klien tidak hamil. Klien membutuhkan metode cadangan pada 7 hari pertama setelah insersi AKDR-LNG. Jika klien sudah mulai mendapatkan menstruasi, AKDR-LNG dapat dipasang sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi.  |
| Lebih dari 4 minggu setelah melahirkan | Tunda insersi AKDR-LNG sampai setidaknya 4 minggu setelah melahirkan. |
| **Tidak menstruasi**  (Tidak berkaitan dengan melahirkan dan menyusui) | AKDR-LNG dapat dipasang kapan pun jika dapat ditetapkan klien tidak hamil . Klien membutuhkan metode cadangan pada 7 hari pertama setelah insersi AKDR-LNG. |
| **Setelah keguguran/ abortus** | Segera. Jika AKDR-LNG dipasang dalam 7 hari setelah keguguran trimester 1 atau 2, dan jika tidak terjadi infeksi. Tidak membutuhkan metode cadangan. Jika lebih dari 7 hari setelah keguguran trimester 1 atau 2 dan tidak ada infeksi, AKDR-LNG dapat dipasang kapan pun jika ia yakin tidak hamil. Klien membutuhkan metode cadangan untuk 7 hari pertama setelah pemasangan AKDR-LNG. Jika terjadi infeksi, obati atau rujuk dan bantu klien untuk memilih metode lain. Jika klien tetap menginginkan AKDR-LNG, AKDR-LNG dapat dipasang setelah infeksi sudah dipastikan sembuh secara sempurna. Insersi AKDR-LNG setelah keguguran trimester kedua membutuhkan pelatihan khusus. Jika tidak terlatih, tunda insersi sampai setidaknya 4 minggu setelah keguguran.   |
| **Setelah meminum Pil Kontrasepsi Darurat** | AKDR-LNG dapat dipasang dalam 7 hari setelah dimulainya menstruasi bulan berikutnya atau kapanpun klien yakin ia tidak hamil. Berikan klien metode cadangan, atau kontrasepsi oral untuk mulai diminum pada hari setelah ia selesai meminum pil Kontrasepsi Darurat, digunakan sampai AKDR-LNG dipasang. |


''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(title: 'AKDR-LNG',),
        body: _body(context));
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Column(
        children: [
          MarkdownBody(
            data: akdrLngMd1,
            styleSheet: context.markdownStyleSheet,
          ),
          // const Gap(Sizes.p16),
          // MarkdownBody(
          //   data: langkahKonselingMd2,
          //   styleSheet: context.markdownStyleSheet,
          // ),
        ],
      ),
    );
  }
}
