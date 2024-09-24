import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class ProgrestogenOnlyPillsPage extends StatelessWidget {
  const ProgrestogenOnlyPillsPage({super.key});

  static const String progestogenPillsMd1 = """
***Pil Progestin***  
     
Pil Progestin merupakan pil yang mengandung Progestin dengan dosis yang sangat rendah seperti dosis hormon progesteron alami dalam tubuh wanita. Pil ini tidak mengandung estrogen sehingga dapat digunakan dalam kondisi menyusui dan pada wanita yang tidak dapat menggunakan metode kontrasepsi yang mengandung estrogen. Bekerja terutama dengan cara :

* Menebalkan mukus serviks (menghalangi sperma bertemu dengan sel telur).  
* Mengganggu siklus menstruasi, termasuk mencegah pelepasan sel telur dari ovarium (ovulasi).

***Kapan memulai?***

**PENTING**: Seorang wanita dapat mulai menggunakan Pil Progestin kapanpun dia inginkan jika dipastikan ia tidak hamil. Untuk memastikan klien tidak hamil, gunakan Ceklis Penapisan Kehamilan

| Menyusui secara eksklusif atau hampir ekskulusif  Kurang dari 6 bulan setelah melahirkan Lebih dari 6 bulan setelah melahirkan |  Jika klien melahirkan kurang dari 6 minggu yang lalu, berikan klien Pil Progestin dan katakan padanya untuk mulai meminumnya 6 minggu setelah melahirkan Jika klien belum mendapat menstruasi bulanannya, klien dapat memulai Pil Progestin kapanpun diantara 6 minggu sampai 6 bulan. Tidak perlu metode cadangan Jika klien sudah mendapat menstruasi bulanannya, ia dapat mulai minum pil progestin seperti yang disarankan pada wanita yang memiliki siklus menstruasi (lihat poin sebelumnya) Jika klien belum mendapat menstruasi bulanan, ia dapat mulai menggunakan Pil Progestin kapan pun jika yakin ia tidak hamil. Ia membutuhkan metode cadangan dalam dua hari pertama minum pil. (Jika Anda tidak benar-benar yakin, berikan klien Pil Progestin sekarang dan katakan pada klien Anda untuk mulai meminumnya saat mestruasi bulan berikutnya) Jika klien sudah mendapat menstruasi bulanannya, klien dapat mulai menggunakan Pil Progestin seperti yang disarankan pada wanita yang memiliki siklus menstruasi (lihat poin sebelumnya) |
| ----- | :---- |
| **Menyusui secara parsial**  Kurang dari 6 minggu setelah melahirkan |  Berikan klien Pil Progestin dan katakan pada klien untuk mulai meminumnya 6 minggu setelah melahirkan Dan juga berikan klien metode cadangan untuk digunakan sampai 6 minggu setelah melahirkan jika menstruasi bulanan kembali sebelum 6 minggu pasca melahirkan |
| Lebih dari 6 minggu setelah melahirkan | Jika belum mendapatkan menstruasi bulanan, klien dapat mulai menggunakan Pil Progestin kapan pun jika benar-benar yakin ia tidak hamil. Klien akan membutuhkan metode cadangan dalam 2 hari pertama meminum pil. (Jika Anda tidak benar-benar yakin, berikan klien Pil Progestin sekarang dan katakan pada klien Anda untuk mulai meminum pil tersebut saat periode menstruasi berikutnya) Jika klien sudah mulai mendapatkan menstruasi, klien dapat mulai meminum Pil Progestin sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi |
| **Tidak Menyusui** Kurang dari 4 minggu setelah melahirkan   Lebih dari 4 minggu setelah melahirkan | Klien dapat mulai minum Pil Progestin kapan pun. Tidak perlu metode cadangan   Jika klien belum mendapatkan menstruasi bulanannya, ia dapat mulai menggunakan Pil Progestin kapan pun jika benar-benar yakin klien tidak hamil. Klien membutuhkan metode cadangan untuk 2 hari pertama meminum pil ini. (Jika Anda tidak benar-benar yakin, berikan klien Pil Progestin sekarang dan katakan pada klien Anda untuk mulai meminum pil tersebut saat periode menstruasi berikutnya) Jika klien sudah mulai mendapatkan menstruasi, klien dapat mulai meminum Pil Progestin sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi |
| **Beralih dari Metode Hormonal** | Segera, jika klien telah menggunakan metode hormonal secara konsisten dan benar atau jika ia yakin tidak hamil. Tidak perlu menunggu periode menstruasi berikutnya. Tidak perlu menggunakan metode cadangan Jika klien beralih dari metode suntik, klien dapat mulai meminum Pil Progestin ketika suntik berikutnya seharusnya diberikan. Tidak perlu metode cadangan |
| **Memiliki siklus menstruasi atau beralih dari metode nonhormonal** | **Dapat mulai minum pil kapan saja** Jika klien mulai minum pil dalam 5 hari sejak dimulainya menstruasi, tidak perlu metode cadangan Jika lebih dari 5 hari sejak dimulainya menstruasi, klien dapat mulai minum Pil Progestin kapan pun jika ia yakin tidak hamil. Klien membutuhkan metode cadangan dalam 2 hari pertama minum pil. (Jika Anda tidak benar-benar yakin, berikan klien Pil Progestin sekarang dan katakan pada klien Anda untuk mulai meminum pil tersebut saat periode menstruasi berikutnya) Jika klien beralih dari IUD, ia dapat mulai minum Pil Progestin sesegera mungkin  |
| **Tidak mensturasi**  (Tidak berkaitan dengan melahirkan dan menyusui) | Klien dapat mulai minum Pil Progestin kapan pun jika yakin tidak hamil. Klien membutuhkan metode cadangan dalam 2 hari pertama meminum pil |
| **Setelah keguguran/ abortus** | Segera. Jika ia mulai meminum pil dalam 7 hari setelah keguguran trimester 1 atau 2, tidak membutuhkan metode cadangan Jika lebih dari 7 hari setelah keguguran trimester 1 atau 2, klien dapat mulai meminumPil Progestin kapan pun jika ia benar-benar yakin tidak hamil. Ia membutuhkan metode cadangan untuk 2 hari pertama meminum pil ini. (Jika Anda tidak benar-benar yakin, berikan klien Pil Progestin sekarang dan katakan pada klien Anda untuk mulai meminum pil tersebut saat periode menstruasi berikutnya) |
| **Setelah meminum Pil Kontrasepsi Darurat** | Klien dapat mulai meminum Pil Progestin sehari setelah dia selesai meminum pil kontrasepsi darurat. Tidak perlu menunggu periode menstruasi berikutnya untuk memulai meminum pil Progestin Pengguna Pil Progestin baru harus memulai paket pil baru Klien yang sedang meminum Pil Progestin yang membutuhkan pil kontrasepsi darurat karena kesalahan dalam mengkonsumsi pil, dapat melanjutkan menggunakan pil Progestin yang tersisa Semua klien membutuhkan metode cadangan untuk 2 hari pertama meminum pil ini |

***Menjelaskan Cara Menggunakan Pil Progestin***

| Memberikan Pil | Berikan paket sebanyak mungkin yang dibutuhkan – bahkan sebanyak pasokan 1 tahun (11 atau 13 paket) |
| :---- | :---- |
| **Jelaskan Mengenai Paket Pil** | Tunjukkan jenis paket – 28 atau 35 pil Jelaskan bahwa semua pil dalam paket Pil Progestin memiliki warna yang sama dan semuanya adalah pil yang aktif, mengandung hormon yang mencegah kehamilan Tunjukkan bagaimana menggunakan pil pertama dari paket dan bagaimana mengikuti petunjuk atau panah dari paket sampai pil yang terakhir |
| **Berikan Instruksi Utama** | **Minum 1 pil setiap hari** \- sampai paket habis Diskusikan petunjuk untuk mengkonsumsi pil setiap hari. Kaitkan minum pil dengan kegiatan harian \-seperti membersihkan gigi \-mungkin membantu klien mengingat Minum pil pada waktu yang sama setiap hari membantu untuk mengingat |
| **Jelaskan memulai paket berikutnya** | Ketika klien menghabiskan satu paket, klien harus minum pil pertama dari paket berikutnya pada hari berikutnya Sangat penting untuk mulai paket berikutnya tepat waktu. Terlambat memulai paket berikutnya akan beresiko kehamilan |
| **Sediakan metode cadangan dan jelaskan cara penggunaannya** | Klien mungkin saja membutuhkan metode cadangan, seperti saat klien lupa minum pil Metode cadangan termasuk abstinens, kondom wanita atau pria, spermisid, dan metode penarikan. Katakan padanya bahwa spermisid dan metode penarikan adalah yang paling kurang efektif. Berikan klien kondom jika memungkinkan |
| **Jelaskan efektivitas berkurang ketika menyusui berhenti** | Tanpa proteksi tambahan dari menyusui, Pil Progestin tidak seefektif seperti kebanyakan metode hormonal lainnya Ketika klien berhenti menyusui, klien dapat melanjutnya minum Pil Progestin jika ia cocok dengan metode ini atau ia boleh saja menggunakan metode yang lain |

***Bagaimana Jika Lupa Meminum Pil?***

| Pesan Utama | Minum satu pil yang terlupa sesegera mungkin Tetap minum pil seperti biasanya, satu pil setiap hari (Klien boleh meminum 2 pil pada saat yang sama atau pada hari yang sama.) |
| :---- | :---- |
| **Apakah klien menstruasi secara teratur?** | Jika iya, klien harus menggunakan metode cadangan dalam 2 hari ke depan Apabila klien berhubungan seksual dalam 5 hari sebelumnya, dapat dipertimbangkan menggunakan pil kontrasepsi darurat |
| **Muntah hebat atau diare** | Jika klien muntah dalam 2 jam setelah minum pil, klien harus meminum pil yang lain dari paketnya sesegera mungkin, lalu setelahnya minum pil seperti biasa Jika klien muntah-muntah atau diare berlanjut, ikuti instruksi untuk Lupa minum pil di atas |


""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Progrestogen-only pills',
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
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
              data: progestogenPillsMd1,
              styleSheet: context.markdownStyleSheet,
            ),
            // const Gap(Sizes.p16),
            // MarkdownBody(
            //   data: langkahKonselingMd2,
            //   styleSheet: context.markdownStyleSheet,
            // ),
          ],
        ),
      ),
    );
  }
}
