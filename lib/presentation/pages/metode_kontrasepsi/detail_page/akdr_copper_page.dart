import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class AkdrCopperPage extends StatelessWidget {
  const AkdrCopperPage({super.key});

  static const String akdrLngMd1 = '''
***Alat Kontrasepsi Dalam Rahim-Copper***

Alat Kontrasepsi Dalam Rahim Copper merupakan batang plastik fleksibel, kecil dengan lengan tembaga. Tenaga medis terlatih akan memasukan AKDR ke dalam rahim wanita melalui vagina dan serviks. Bekerja secara utama dengan mengubah susunan kimia yang merusak sperma dan sel telur sebelum keduanya dapat bertemu untuk fertilisasi. 

***Kapan Dapat Mulai Menggunakan AKDR***

**PENTING:** Pada banyak kasus seorang wanita dapat mulai menggunakan AKDR kapanpun ia yakin tidak hamil. Untuk memastikan klien tidak hamil, gunakan Ceklis Penapisan Kehamilan

| Situasi  | Kapan Memulai |
| ----- | ----- |
| **Memiliki Siklus Menstruasi** | **AKDR dapat dipasang kapanpun klien inginkan**  Jika AKDR dipasang dalam 12 hari setelah mulainya menstruasi, tidak perlu menggunakan metode cadangan. Jika lebih dari 12 hari setelah mulainya menstruasi, AKDR dapat dipasang kapan pun selama klien yakin tidak hamil. Tidak perlu metode cadangan.  |
| **Beralih dari Metode Lain** | Segera, jika ia telah menggunakan metode sebelumnya secara konsisten dan benar atau jika klien yakin ia tidak hamil. Tidak perlu menunggu periode menstruasi berikutnya. Tidak perlu metode cadangan. Jika klien beralih dari injeksi, AKDR dapat dipasang pada saat injeksi ulangan seharusnya diberikan. Tidak perlu metode cadangan.  |
| **Segera Setelah Melahirkan** | Kapanpun dalam 48 jam setelah melahirkan, termasuk dengan persalinan sesar. (Tenaga kesehatan membutuhkan pelatihan khusus untuk insersi pasca persalinan). Ekspulsi lebih sedikit terjadi jika insersi dilakukan segera setelah lahirnya plasenta (jika memungkinkan). Jika lebih dari 48 jam setelah melahirkan, tunda pemasangan sampai 4 minggu atau lebih setelah melahirkan |
| **Menyusui secara eksklusif atau hampir ekskulusif**   Kurang dari 6 bulan setelah melahirkan             Lebih dari 6 bulan setelah melahirkan | Jika menstruasi bulanan belum kembali, AKDR dapat dipasang kapanpun di antara 4 minggu sampai 6 bulan. Tidak perlu metode cadangan. Jika menstruasi bulanan sudah kembali, AKDR dapat dipasang seperti disarankan pada wanita yang memiliki siklus menstruasi. Jika klien belum mendapat menstruasi bulanan, AKDR dapat dipasang kapan pun jika yakin ia tidak hamil. Tidak perlu metode cadangan. Jika klien sudah mendapat menstruasi bulanannya, AKDR dapat dipasang seperti disarankan pada wanita yang memiliki siklus menstruasi |
| **Menyusui secara parsial atau tidak menyusui**    Lebih dari 4 minggu setelah melahirkan | Jika belum mendapatkan menstruasi bulanan, AKDR dapat dipasang jika dapat ditetapkan klien tidak hamil. Tidak perlu metode cadangan. Jika klien sudah mulai mendapatkan menstruasi, AKDR dapat dipasang sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi |
| **Tidak menstruasi**  (Tidak berkaitan dengan melahirkan dan menyusui) Setelah keguguran/ abortus | AKDR dapat dipasang kapan pun jika dapat ditetapkan klien tidak hamil . Tidak membutuhkan metode cadangan |
| **Sebagai Kontrasepsi Darurat** | Segera. Jika AKDR dipasang dalam 12 hari setelah keguguran trimester 1 atau 2, dan jika tidak terjadi infeksi. Tidak membutuhkan metode cadangan. Jika lebih dari 12 hari setelah keguguran trimester 1 atau 2, AKDR dapat dipasang kapan pun jika ia benar-benar yakin tidak hamil. Tidak perlu metode cadangan. Jika terjadi infeksi, obati atau rujuk dan bantu klien untuk memilih metode lain. Jika klien tetap menginginkan AKDR, AKDR dapat dipasang setelah infeksi sudah dipastikan sembuh secara sempurna. Insersi AKDR setelah keguguran trimester kedua membutuhkan pelatihan khusus. Jika tidak terlatih, tunda insersi sampai setidaknya 4 minggu setelah keguguran. |
| **Sebagai Kontrasepsi Darurat** | Dalam 5 hari setelah hubungan seksual tanpa kontrasepsi. Ketika waktu ovulasi dapat diperkirakan, AKDR dapat dipasang sampai 5 hari setelah ovulasi.   |
| **Setelah meminum Pil Kontrasepsi Darurat** | AKDR dapat dipasang pada hari yang sama klien meminum pil Kontrasepsi Darurat. Tidak perlu metode cadangan |

   
***Prosedur Pemasangan AKDR***

| Bicara dengan Klien sebelum Prosedur | Jelaskan prosedur insers i Tunjukkan spekulum, tenakulum, dan AKDR dan inserter dalam paket pada klien Katakan pada klien bahwa ia akan merasakan sedikit ketidaknyamanan atau keram selama prosedur. Minta pada klien untuk memberitahu saat ia merasa nyeri atau tidak nyaman. Ibuprofen (200-400 mg), paracetamol (325-1000 mg) atau pereda nyeri yang lain dapat diberikan 30 menit sebelum prosedur untuk mengurangi nyeri dan keram. Jangan memberi aspirin yang akan memperlambat pembekuan darah. |
| :---: | :---- |
| **Bicara dengan klien selama Prosedur** | Katakan padanya apa yang sedang dilakukan, langkah demi langkah dan tenangkan pasien Peringatkan pasien sebelum tindakan yang mungkin menyebabkan nyeri Tanyakan terus pada klien jika ia merasakan nyeri  |

***Menjelaskan Prosedur Insersi***

Berikut ini merupakan ringkasan langkah-langkah insersi AKDR untuk membantu menjelaskan kepada klien. Deskripsi di bawah ini merupakan ringkasan karena insersi AKDR sesungguhnya membutuhkan pelatihan khusus dan praktik di bawah supervisi langsung.

![image1](assets/images/img_copper.png)

1. Petugas medis melakukan pemeriksaan pelvis untuk menilai kelayakan . Pertama petugas medis melakukan pemeriksaan bimanual dan kemudian memasukan spekulum ke dalam vagina untuk memeriksa serviks.

2. Petugas medis membersihkan serviks dan vagina dengan antiseptik yang tepat.

3. Tenaga kesehatan secara perlahan memasukan tenakulum melalui spekulum dan menutup tenakulum secukupnya untuk menahan secara lembut serviks dan uterus agar stabil.

4. Petugas kesehatan secara perlahan dan lembut memasukan sonde melalui serviks untuk mengukur kedalaman dan posisi uterus.

5. Petugas kesehatan memasuka AKDR kedalam inserter ketika keduanya masih dalam paket steril yang belum dibuka.

6. Petugas kesehatan secara perlahan dan lembut memasukan AKDR dan mengeluarkan inserter.

7. Petugas kesehatan memotong benang AKDR, meninggalkan benang menggantung dari serviks sekitar 3 cm.

**Instruksi Pasca Pemasangan AKDR**

| Dapat terjadi nyeri, keram setelah pemasangan | Klien dapat merasakan keram dan nyeri beberapa hari setelah pemasangan AKDR. Berikan ibuprofen (200-400 mg), paracetamol (325-1000 mg) atau pereda nyeri yang lain jika diperlukan. Dapat terjadi perdarahan atau bercak darah segera setelah insersi. Hal ini dapat berlanjut 3 sampai 6 bulan. |
| :---: | :---- |
| ***Klien dapat mengecek benang*** | Jika klien mau, ia dapat mengecek benang AKDR, terutama pada beberapa bulan pertama dan setelah menstruasi bulanan, untuk memastikan AKDR masih berada dalam posisi yang benar. |
| **Durasi efek pencegahan kehamilan** | Diskusikan bagaimana mengingat tanggal kembali Berikan klien informasi tertulis pada kartu pengingat, yang menjelaskan: \- Tipe AKDR yang dimiliki pasien \- Tanggal insersi \- Bulan dan tahun AKDR harus dilepaskan atau diganti \- Kemana klien harus pergi jika ada masalah atau pertanyaan mengenai AKDRnya. |
| **Kunjungan Tindak Lanjut** | Disarankan untuk melakukan kunjungan tindak lanjut setelah menstruasi pertama atau 3 sampai 6 minggu setelah insersi AKDR. |

**Melepaskan Alat Kontrasepsi Dalam Rahim**

PENTING: Petugas kesehatan tidak boleh menolak atau menunda ketika seorang wanita menginginkan AKDRnya dilepas, apapun alasannya. Seorang wanita tidak boleh dipaksa untuk terus menggunakan AKDR.

Melepaskan AKDR biasanya sederhana. Dapat dilakukan kapan pun. Melepaskan AKDR akan lebih mudah saat menstruasi, ketika serviks lebih lembut. Jika terjadi perforasi atau jika sulit dilepaskan, rujuk klien kepada klinisi yang berpengalaman yang dapat melepaskan AKDR dengan teknik yang tepat.

**Menjelaskan Prosedur Melepaskan AKDR**

1. Petugas medis memasukan spekulum untuk melihat serviks dan benang AKDR dan secara perlahan membersihkan serviks dan vagina dengan larutan antiseptik, seperti iodine.

2. Petugas medis menanyakan kepada klien untuk menarik napas perlahan dan dalam dan rileks. Klien harus bilang jika ia merasa nyeri selama prosedur.

3. Dengan menggunakan forcep ukuran kecil (narrow forceps), petugas kesehatan menarik benang AKDR secara perlahan dan lembut sampai AKDR keluar seluruhnya.

''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(
          title: 'AKDR-Copper',
        ),
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
            imageBuilder: (uri, title, alt) {
              return GestureDetector(
                onTap: () {
                  _navigateToPhotoDetail(context, uri.path);
                },
                child: Image.asset(uri.path),
              );
            },
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

  void _navigateToPhotoDetail(BuildContext context, String imageUrl) {
    context.router.push(PhotoDetailRoute(photoUrl: imageUrl));
  }
}
