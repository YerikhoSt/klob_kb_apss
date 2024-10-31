import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class KoyoKombinasiPage extends StatelessWidget {
  const KoyoKombinasiPage({super.key});

  static const String koyoKombinasiMd1 = '''
***Koyo Kombinasi***

Koyo Kombinasi merupakan plastik fleksibel berukuran kecil, tipis, berbentuk kotak yang dipakai pada tubuh. Koyo ini secara kontinyu melepaskan 2 hormon –progestin dan estrogen, seperti hormon progesteron dan estrogen alami di tubuh wanita – langsung dari kulit menuju pembuluh darah. Sebuah koyo digunakan setiap minggu selama 3 minggu, lalu jeda tanpa koyo selama seminggu. Saat minggu keempat, klien akan mendapatkan menstruasinya. Bekerja secara utama dengan cara mencegah lepasnya sel telur dari ovarium (ovulasi).

**Menjelaskan Cara Menggunakan Koyo**

| Jelaskan bagaimana cara melepaskan koyo dari kantong pembungkus dan melepaskan bagian belakangnya | Jelaskan bahwa klien harus merobek kantong pembungkus pada bagian pinggir kantong. Lalu klien harus menarik keluar koyo dari kantong pembungkus dan melepaskan bagian belakang tanpa mengenai bagian yang lengket. |
| :---: | :---- |
| **Tunjukkan pada klien di mana dan bagaimana menempelkan koyo** | Jelaskan bahwa klien dapat menempelkannya pada bagian atas luar lengan, punggung, perut atau bokong, di manapun kering dan bersih namun jangan di bagian payudara. Klien harus menekan koyo ke arah kulit selama 10 detik. Ia harus menyusuri pinggiran koyo untuk meyakinkan koyo sudah tertempel. Koyo tidak akan lepas selama bekerja, olahraga, berenang dan mandi. |
| **Klien harus mengganti koyo setiap minggu selama tiga minggu berturut-turut** | Klien harus menempelkan setiap koyo baru pada hari yang sama setiap minggu – “hari mengganti koyo”. |
| **Klien tidak boleh menggunakan koyo pada minggu keempat** | Klien mungkin akan mendapatkan menstruasi pada minggu ini. |
| **Setelah satu minggu tidak menggunakan koyo, ia harus menempelkan koyo yang baru** | Klien tidak boleh lepas koyo lebih dari 7 hari. Jika lepas koyo lebih dari 7 hari maka beresiko kehamilan. |

***Instruksi untuk Lupa Melepaskan atau Mengganti Koyo***

| Lupa menempel koyo baru pada awal siklus (pada minggu pertama) | Segera mungkin pakai koyo baru. Catat hari tersebut sebagai “hari ganti koyo” yang baru. Gunakan metode cadangan untuk 7 hari pertama pemakaian koyo. Lalu, jika koyo baru dipasang terlambat 3 hari atau lebih (tidak pakai koyo 10 hari atau lebih) dan klien berhubungan seksual tanpa proteksi dalam 5 hari sebelumnya, pertimbangkan untuk minum pil kontrasepsi darurat. |
| :---: | :---- |
| **Lupa mengganti koyo di tengah siklus** | Jika terlambat 1 atau 2 hari (sampai 48 jam): Tempelkan koyo baru segera setelah ingat Tidak perlu metode cadangan Jika terlambat lebih dari 2 hari (lebih dari 48 jam): Hentikan siklus sekarang dan mulailah siklus 4 minggu yang baru dengan menempelkan koyo yang baru segera Catat hari tersebut sebagai “hari ganti koyo” Gunakan metode cadangan untuk 7 hari pertama penggunaan koyo |
| **Lupa melepas koyo pada akhir siklus** (minggu 4\) | Lepaskan koyo Mulailah siklus berikutnya seperti biasa pada “hari ganti koyo” Tidak perlu metode cadangan |


''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(title: 'Koyo Kombinasi',),
        body: _body(context));
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Column(
        children: [
          MarkdownBody(
            data: koyoKombinasiMd1,
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
