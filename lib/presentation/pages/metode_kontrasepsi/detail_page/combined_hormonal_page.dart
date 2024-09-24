import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class CombinedHormonalPage extends StatelessWidget {
  const CombinedHormonalPage({super.key});

  static const String kontrasepsiKombinasiMd1 = '''
***Kontrasepsi Oral Kombinasi***  
Merupakan pil yang mengandung 2 hormon dosis rendah, progestin dan estrogen. Cara kerja utamanya adalah dengan mencegah ovulasi. Kapan memulai?

Seorang wanita dapat mulai menggunakan KOK kapan saja dia inginkan jika yakin tidak hamil. Untuk menyingkirkan kehamilan dapat menggunakan ceklist Penapisan Kehamilan (SubMenu 3.1).

| Situasi | Kapan Memulai |
| ----- | ----- |
| Memiliki siklus menstruasi atau beralih dari metode non-hormonal | Dapat mulai minum pil kapan saja Jika klien mulai dalam 5 hari setelah mulai haid, tidak perlu metode cadangan. Jika lebih dari 5 hari setelah menstruasi dimulai, klien dapat mulai menggunakan KOK kapan pun jika yakin ia tidak hamil. Ia akan membutuhkan metode cadangan untuk 7 hari pertama menggunakan pil KOK. (Jika Anda tidak yakin , berikan ia KOK sekarang dan katakan padanya, untuk mulai memakainya saat periode menstruasi berikutnya). Jika klien beralih dari AKDR, klien dapat mulai KOK segera) |
| Beralih dari metode hormonal | Segera, jika klien telah menggunakan metode hormonal secara konsisten dan benar atau dipastikan tidak hamil. Tidak perlu menunggu periode menstruasi berikutnya. Tidak perlu menggunakan metode cadangan. Jika klien beralih dari metode suntik, klien dapat mulai minum KOK pada jadwal suntikan akan diberikan.   |
| **Menyusui secara eksklusif atau hampir eksklusif**  Kurang dari 6 bulan setelah melahirkan Lebih dari 6 bulan setelah melahirkan  | Berikan klien KOK dan katakan pada klien untuk mulai menggunakan pil tersebut 6 bulan setelah melahirkan atau ketika ASI bukan lagi merupakan sumber asupan bayi yang utama. Jika belum mulai mendapatkan menstruasi, klien dapat mulai minum KOK kapan pun jika yakin tidak hamil. Klien membutuhkan metode cadangan untuk 7 hari pertama menggunakan KOK. (Jika Anda tidak benar-benar yakin, berikan KOK sekarang dan katakan pada klien Anda untuk mulai meminumnya saat menstruasi berikutnya) Jika sudah mulai mendapatkan menstruasi, klien dapat mulai meminum KOK seperti yang disarankan untuk wanita yang memiliki siklus menstruasi |
| **Menyusui secara parsial**  Kurang dari 6 minggu setelah melahirkan | Berikan klien KOK dan katakan pada klien untuk mulai meminumnya 6 minggu setelah melahirkan. Dan juga berikan klien metode cadangan untuk digunakan sampai 6 minggu setelah melahirkan jika menstruasi bulanan kembali sebelum 6 minggu pasca melahirkan. |
| Lebih dari 6 minggu setelah melahirkan | Jika belum mendapatkan menstruasi bulanan, klien dapat mulai menggunakan KOK kapan pun jika benar-benar yakin ia tidak hamil. Klien akan membutuhkan metode cadangan dalam 7 hari pertama meminum pil. (Jika Anda tidak benar-benar yakin, berikan klien KOK sekarang dan katakan pada klien Anda untuk mulai meminum pil tersebut saat periode menstruasi berikutnya). Jika klien sudah mulai mendapatkan menstruasi, klien dapat mulai meminum KOK sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi (lihat SubMenu sebelumnya). |
| **Tidak Menyusui**  Kurang dari 4 minggu setelah melahirkan | Klien dapat menggunakan KOK kapanpun pada hari ke 21-28 setelah melahirkan. Berikan klien pil kapan saja untuk memulai pada 7 hari tersebut. Tidak perlu menggunakan metode cadangan. (Jika ada resiko untuk Tromboemboli Vena, tunggu sampai 6 minggu). |
| Lebih dari 4 minggu setelah melahirkan | Jika klien belum mendapatkan menstruasi bulanannya, ia dapat mulai menggunakan KOK kapan pun jika benar-benar yakin klien tidak hamil. Klien membutuhkan metode cadangan untuk 7 hari pertama meminum pil ini. (Jika Anda tidak benar-benar yakin, berikan klien KOK sekarang dan katakan pada klien Anda untuk mulai meminum pil tersebut saat periode menstruasi berikutnya). Jika klien sudah mulai mendapatkan menstruasi, klien dapat mulai meminum KOK sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi (lihat SubMenu sebelumnya). |
| **Tidak ada menstruasi bulanan** (tidak berkaitan dengan melahirkan atau menyusui) | Klien dapat mulai meminum KOK kapan pun ia benar-benar yakin tidak hamil. Klien membutuhkan metode cadangan untuk 7 hari pertama meminum pil ini. |
| **Setelah keguguran/ abortus** | Segera. Jika ia mulai meminum pil dalam 7 hari setelah keguguran trimester 1 atau 2, tidak membutuhkan metode cadangan. Jika lebih dari 7 hari setelah keguguran trimester 1 atau 2, klien dapat mulai meminum KOK kapan pun jika ia benar-benar yakin tidak hamil. Ia membutuhkan metode cadangan untuk 7 hari pertama meminum pil ini. (Jika Anda tidak benar-benar yakin, berikan klien KOK sekarang dan katakan pada klien Anda untuk mulai meminum pil tersebut saat periode menstruasi berikutnya). |
| **Setelah meminum Pil Kontrasepsi Darurat** | Klien dapat mulai meminum KOK sehari setelah dia selesai meminum pil kontrasepsi darurat. Tidak perlu menunggu periode menstruasi berikutnya untuk memulai meminum pil KOK. Pengguna KOK baru harus memulai paket pil baru Klien yang sedang meminum KOK yang membutuhkan pil kontrasepsi darurat karena kesalahan dalam mengkonsumsi pil KOK, dapat melanjutkan menggunakan pil KOK yang tersisa. Semua klien membutuhkan metode cadangan untuk 7 hari pertama meminum pil ini. |

***Menjelaskan Cara Menggunakan Kontrasepsi Oral Kombinasi***

| Memberikan Pil | Berikan paket sebanyak mungkin yang dibutuhkan – bahkan sebanyak pasokan 1 tahun (13 paket) |
| :---- | :---- |
| Jelaskan Mengenai Paket Pil | Tunjukkan jenis paket – 21 atau 28 pil. Pada paket 28 pil, tunjukkan bahwa 7 pil terakhir warnanya berbeda dan tidak mengandung hormon. Tunjukkan bagaimana menggunakan pil pertama dari paket dan bagaimana mengikuti petunjuk atau panah dari paket sampai pil yang terakhir. |
| Berikan Instruksi Utama | Minum 1 pil setiap hari- sampai paket habis Diskusikan petunjuk untuk mengkonsumsi pil setiap hari. Kaitkan minum pil dengan kegiatan harian seperti membersihkan gigi \-mungkin membantu klien mengingat. Minum pil pada waktu yang sama setiap hari membantu untuk mengingat. Hal ini juga dapat mengurangi beberapa efek samping. |
| Jelaskan memulai paket berikutnya | Paket 28 pil: Ketika klien selesai dengan satu paket, tepat pada hari berikutnya klien harus meminum pil pertama dari paket selanjutnya. Paket 21 pil: Setelah klien meminum pil terakhir dari satu paket, klien harus menunggu tidak lebih dari 7 hari dan kemudian minum pil pertama dari paket selanjutnya. Hal yang sangat penting untuk memulai paket selanjutnya tepat waktu. Terlambat memulai paket baru dapat beresiko kehamilan |
| Sediakan metode cadangan dan jelaskan cara penggunaannya | Klien mungkin saja membutuhkan metode cadangan, seperti saat klien lupa minum pil. Metode cadangan termasuk abstinens, kondom wanita atau pria, spermisid, dan metode penarikan. Katakan padanya bahwa spermisid dan metode penarikan adalah yang paling kurang efektif. Berikan klien kondom jika memungkinkan. |

***Bagaimana Jika Lupa Meminum Pil?***  
Lupa meminum pil atau terlambat diminum sangat mungkin terjadi. Pengguna KOK harus mengetahui apa yang harus dilakukan jika mereka lupa meminum pil. Jika klien lupa minum 1 pil atau lebih, ia harus mengikuti instruksi di bawah ini.

| Pesan Utama | Minum satu pil hormonal yang terlupa sesegera mungkin Tetap minum pil seperti biasanya, satu pil setiap hari (Klien boleh meminum 2 pil pada saat yang sama atau pada hari yang sama.) |
| :---- | :---- |
| **Lupa 1 atau 2 pil? Terlambat mulai paket baru 1 atau 2 hari?** | Minum satu pil hormonal sesegera mungkin Resiko kecil untuk terjadi kehamilan |
| **Lupa minum 3 pil atau lebih berturut-turut pada minggu pertama atau kedua? Terlambat 3 hari atau lebih dalam memulai paket baru?** | Minum satu pil hormonal sesegera mungkin. Gunakan metode cadangan dalam 7 hari kedepan. Dan apabila klien berhubungan seksual dalam 5 hari sebelumnya, dapat dipertimbangkan Pil Kontrasepsi Darurat. |
| **Lupa minum 3 pil atau lebih pada minggu ketiga?** | Minum satu pil hormonal sesegera mungkin Selesaikan semua pil hormonal dalam paket. Buang 7 pil non-hormonal yang ada dalam paket 28 pil. Mulai paket baru pada keesokan hari Gunakan metode cadangan dalam 7 hari kedepan Jika klien berhubungan seksual dalam 5 hari sebelumnya, dapat dipertimbangkan Pil Kontrasepsi Darurat |
| **Lupa minum pil non-hormonal?** (7 pil terakhir dalam paket 28 pil) | Buang pil nonhormonal yang terlupa Tetap minum pil KOK, satu setiap hari. Mulai paket baru seperti biasa. |
| Muntah hebat atau diare | Jika klien muntah dalam 2 jam setelah minum pil, klien harus meminum pil yang lain dari paketnya sesegera mungkin, lalu setelahnya minum pil seperti biasa. Jika klien muntah-muntah atau diare selama lebih dari dua hari, ikuti instruksi untuk Lupa minum 3 pil atau lebih di atas. |


''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(
          title: 'Combined Hormonal Contraceptives',
        ),
        body: _body(context));
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
              data: kontrasepsiKombinasiMd1,
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
