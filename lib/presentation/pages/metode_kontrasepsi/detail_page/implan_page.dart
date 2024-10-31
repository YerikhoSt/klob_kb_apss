import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class ImplanPage extends StatelessWidget {
  const ImplanPage({super.key});

  static const String implanMd1 = '''
**Implan**

Implan adalah batang atau kapsul plastik kecil, masing-masing seukuran korek api, yang melepaskan progestin seperti hormon progesterone alami dalam tubuh wanita. Seorang petugas terlatih melakukan bedah minor untuk memasukan implan di bawah kulit pada sisi bagian dalam dari lengan atas seorang wanita. Tidak mengandung estrogen, dan dapat digunakan saat menyusui dan oleh wanita yang tidak dapat menggunakan metode yang mengandung estrogen. Cara kerja utama dengan menebalkan mukus serviks dan mengganggu siklus menstruasi, termasuk mencegah ovulasi

 

***Kapan Dapat Mulai Menggunakan Implan***

**PENTING:** Seorang wanita dapat mulai menggunakan kapan pun ia inginkan jika yakin ia tidak hamil. Agar yakin seorang wanita tidak hamil, gunakan ceklis penapisan kehamilan

| Situasi | Kapan Memulai |
| ----- | :---- |
| **Memiliki Siklus Menstruasi atau Beralih Dari Metode Nonhormonal** | **Implan dapat diberikan kapanpun klien inginkan**  Jika klien ingin mulai menggunakan implan dalam 7 hari setelah dimulainya menstruasi (5 hari untuk Implanon), tidak perlu menggunakan metode cadangan Jika lebih dari 7 hari setelah dimulainya menstruasi (lebih dari 5 hari untuk Implanon), klien dapat mulai menggunakan implan kapan pun jika ia yakin tidak hamil. Klien membutuhkan metode cadangan untuk 7 hari pertama setelah pemasangan Implan Jika klien beralih dari AKDR, ia dapat segera dipasang Implan |
| **Beralih dari Metode Hormonal** | Segera, jika ia telah menggunakan metode hormonal secara konsisten dan benar atau jika klien yakin ia tidak hamil. Tidak perlu menunggu periode menstruasi berikutnya. Tidak perlu metode cadangan Jika klien beralih dari injeksi, Implan dapat dipasang pada saat injeksi ulangan seharusnya diberikan. Tidak perlu metode cadangan |
| **Menyusui secara eksklusif atau hampir ekskulusif**    Kurang dari 6 bulan setelah melahirkan           Lebih dari 6 bulan setelah melahirkan | Jika klien baru melahirkan kurang dari 6 minggu yang lalu, tunda pemasangan sampai setidaknya 6 minggu setelah melahirkan Jika menstruasi bulanan belum kembali, implan dapat dipasang kapanpun di antara 6 minggu sampai 6 bulan. Tidak perlu metode cadangan Jika menstruasi bulanan sudah kembali, implan dapat dipasang seperti disarankan pada wanita yang memiliki siklus menstruasi     Jika klien belum mendapat menstruasi bulanan, implan dapat dipasang kapan pun jika yakin ia tidak hamil. Klien membutuhkan metode cadangan pada 7 hari pertama setelah injeksi Jika klien sudah mendapat menstruasi bulanannya, implan dapat dipasang seperti disarankan pada wanita yang memiliki siklus menstruas |
| **Menyusui secara parsial**  Kurang dari 6 minggu setelah melahirkan | Tunda pemasangan implan sampai setidaknya 6 minggu setelah melahirkan |
| Lebih dari 6 minggu setelah melahirkan | Jika belum mendapatkan menstruasi bulanan, implan dapat dipasang kapan pun jika diyakinkan ia tidak hamil. Klien dapat diberikan metode cadangan untuk 7 hari pertama setelah pemasangan implan Jika klien sudah mulai mendapatkan menstruasi, implan dapat dipasang sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi |
| **Tidak Menyusui**    Kurang dari 4 minggu setelah melahirkan     Lebih dari 4 minggu setelah melahirkan |  ·Implan dapat dipasang kapan saja. Tidak perlu metode cadangan     Jika klien belum mendapatkan menstruasi bulanannya, Implan dapat dipasang kapan pun jika benar-benar yakin klien tidak hamil. Klien membutuhkan metode cadangan untuk 7 hari pertama setelah pemasangan Jika klien sudah mulai mendapatkan menstruasi, Implan dapat dipasang   sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi |
| **Tidak menstruasi** (Tidak berkaitan dengan melahirkan dan menyusui) | Implan dapat dipasang kapan pun jika yakin tidak hamil. Klien membutuhkan metode cadangan dalam 7 hari pertama setelah pemasangan  |
| **Setelah keguguran/ abortus** | Segera. Jika implan dipasang dalam 7 hari setelah keguguran trimester 1 atau 2, tidak membutuhkan metode cadangan Jika lebih dari 7 hari setelah keguguran trimester 1 atau 2, implan dapat dipasang kapan pun jika ia benar-benar yakin tidak hamil. Ia membutuhkan metode cadangan untuk 7 hari pertama setelah pemasangan  |
| **Setelah meminum Pil Kontrasepsi Darurat** | Implan dapat dipasang dalam 7 hari setelah mulainya menstruasi berikutnya (5 hari untuk Implanon) atau kapan pun jika ia yakin tidak hamil. Berikan pasien metode cadangan atau kontrasepsi oral untuk mulai diminum pada hari setelah klien selesai minum Kontrasepsi Darurat, untuk digunakan sampai Implan dipasang   |

**Pemasangan Implan**

| Tenaga Medis melakukan prosedur pencegahan infeksi yang tepat | ![image1](assets/images/img_implan.png) |
| :---- | :---- |
| Klien diberikan suntikan anestesi di bawah kulit lengannya untuk mengurangi nyeri saat implan dimasukan | ![image1](assets/images/img_implan2.png) |
| Tenaga kesehatan membuat sayatan kecil pada kulit bagian dalam lengan | ![image1](assets/images/img_implan3.png) |
| Tenaga kesehatan memasukan implan tepat di bawah kulit | ![image1](assets/images/img_implan4.png) |
| Setelah implan dimasukan, tenaga kesehatan menutup insisi dengan perban adhesif. Tidak perlu dijahit. Insisi ditutup dengan kasa dan dibalut | ![image1](assets/images/img_implan5.png) |

***Melepaskan Implan***

**PENTING:** Seorang tenaga medis tidak boleh menolak atau menunda ketika klien meminta agar Implannya dilepaskan, apapun alasannya apakah itu alasan personal atau alasan medis. Seorang wanita tidak boleh dipaksa untuk terus menggunakan implan

***Menjelaskan Prosedur Melepaskan Implan***

| Tenaga medis melakukan prosedur pencegahan-infeksi yang benar. |
| :---- |
| Klien diberikan injeksi anestesi lokal di bawah kulit lengan untuk mengurangi nyeri selama pelepasan implan. Injeksi ini dapat terasa nyeri. Klien dapat tetap sadar selama prosedur. |

| Tenaga Medis membuat sebuah insisi yang kecil pada kulit pada bagian dalam lengan atas, dekat dengan lokasi insersi | ![image1](assets/images/img_implan6.png) |
| :---- | :---- |
| Tenaga kesehatan menggunakan alat untuk menarik implan keluar. Klien dapat merasakan sentakan, dan sedikit nyeri selama prosedur dan beberapa hari setelahnya | ![image1](assets/images/img_implan7.png) |

| Tenaga medis menutup insisi dengan perban adhesif. Jahitan tidak diperlukan. Perban elastis dapat dipasang mengelilingi perban adhesif untuk memberikan tekanan lembut selama 2-3 hari. |
| :---- |

***Instruksi Pasca Pemasangan Implan***

| Jaga agar lengan tetap kering | Klien harus menjaga agar area insersi kering selama 4 hari. Klien dapat melepas perban elastis atau kasa setelah 2 hari dan perban adhesif setelah 5 hari |
| :---- | :---- |
| **Dapat terjadi nyeri, memar setelah pemasangan** | Setelah efek anestesi hilang, lengan klien dapat nyeri untuk beberapa hari. Dapat juga terjadi bengkak dan memar pada tempat insersi. Hal ini umum terjadi dan akan hilang tanpa pengobatan |
| **Durasi efek pencegahan kehamilan** | Diskusikan bagaimana mengingat tanggal kembali Berikan klien informasi tertulis pada kartu pengingat, yang menjelaskan:  Tipe implan yang dimiliki pasien  Tanggal insersi  Bulan dan tahun implan harus dilepaskan atau diganti  Kemana klien harus pergi jika ada masalah atau pertanyaan mengenai implannya |
| **Implan harus dilepas sebelum kehilangan efektivitasnya** | Klien dapat datang kembali sebelum implan kehilangan efektivitasnya |

***Pil Kontrasepsi Darurat***

Pil Kontrasepsi Darurat adalah pil yang mengandung progestin saja, atau dua hormon yaitu progestin dan estrogen \- hormon seperti hormon progesteron dan estrogen alami dalam tubuh wanita. Pil kontrasepsi darurat terkadang disebut sebagai pil “morningafter” atau kontrasepsi post-koitus. Bekerja secara utama dengan mencegah atau menunda pelepasan sel telur dari ovarium (ovulasi). Cara kerja ini tidak berfungsi jika wanita tersebut sudah hamil sebelumnya.

**Pil Apakah yang Dapat Digunakan sebagai Pil Kontrasepsi Darurat?**

* Produk Pil Kontrasepsi Darurat khusus dengan levonorgestrel saja, atau kombinasi estrogen dan levonorgestrel atau ulipristal asetat.  
    
* Pil progestin dengan levonorgestrel atau norgestrel.  
    
* Kombinasi kontrasepsi oral dengan estrogen dan progestin – levonorgestrel, norgestrel atau norethindrone (juga disebut norethisterone).


**Kapan Meminum pil Kontrasepsi Darurat?**

* Sesegera mungkin setelah hubungan seksual tanpa proteksi. Semakin cepat pil Kontrasepsi Darurat diminum setelah hubungan seksual tanpa proteksi, maka akan semakin baik untuk mencegah kehamilan.  
    
* Dapat mencegah kehamilan ketika diminum dalam 5 hari setelah hubungan seksual tanpa proteksi.

**Indikasi Pil Kontrasepsi Darurat:**

* Hubungan seksual dengan pemaksaan atau pemerkosaan Hubungan seksual tanpa proteksi Kesalahan pemakaian kontrasepsi, seperti:  
  * Kondom tidak digunakan secara benar, lepas atau bocor  
  * Tidak tepat menggunakan metode kesadaran kesuburan (contohnya gagal pantang atau menggunakan metode lain selama masa subur).  
  * Pria gagal menarik sebelum ejakulasi.  
  * Klien lupa minum pil KOK 3 hari atau lebih atau terlambat memulai paket baru 3 hari atau lebih.  
  * IUD lepas dari tempat seharusnya  
  * Klien terlambat lebih dari 4 minggu untuk mengulang suntik DMPA, terlambat lebih dari 2 minggu untuk mengulang suntik NET-EN, atau terlambat lebih dari 7 hari untuk mengulang suntik bulanan.

***Formulasi dan Dosis Kontrasepsi Darurat***

**Memberikan Pil Kontrasepsi darurat**

| Memberikan Pil | Klien dapat meminum sekaligus Atau jika klien menggunakan regimen 2 dosis, katakan padanya untuk meminum dosis berikutnya12 jam berikutnya. |
| :---- | :---- |
| **Jelaskan Mengenai Efek Samping yang Paling Sering** | Mual, nyeri abdomen atau efek samping yang lain. Perdarahan sedikit atau perubahan dalam waktu menstruasi bulanan. Efek samping bukan merupakan gejala penyakit. |
| **Jelaskan Apa yang Harus Dilakukan terhadap Efek Samping** | **Mual**: \- Penggunaan obat-obatan anti-mual secara rutin tidak disarankan \- Klien yang mengalami mual dengan penggunaan pil Kontrasepsi Darurat sebelumnya atau dengan dosis pertama dari regimen dua dosis dapat meminum obat anti-mual seperti 50mg meclizine satu setengah sampai satu jam sebelum minum pil Kontrasepsi Darurat. **Muntah**: \- Jika klien muntah dalam dua jam setelah minum pil Kontrasepsi Darurat, ia harus minum lagi dosis yang sama. (Ia dapat minum obat anti-mual seperti dijelaskan di atas). Jika muntah berlanjut, ia dapat mengulangi dosis dengan menaruh pil-pil tersebut di dalam vagina. Jika muntah terjadi lebih dari dua jam setelah minum pil Kontrasepsi Darurat, ia tidak perlu minum pil ekstra. |
| **Berikan beberapa pil Kontrasepsi Darurat dan bantu klien untuk memulai metode kontrasepsi** | Jika memungkinkan, berikan pasien beberapa pil Kontrasepsi Darurat untuk dibawa pulang jika seandainya ia membutuhkannya di masa depan. Lihat Perencanaan Kontrasepsi di bawah ini |

**Merencanakan Kontrasepsi**

1. Jelaskan bahwa pil Kontrasepsi Darurat tidak akan melindungi klien dari kehamilan akibat hubungan seksual selanjutnya- bahkan untuk satu hari setelahnya. Diskusikan perlunya dan pilihan pencegahan kehamilan dan, jika beresiko, perlindungan dari IMS termasuk HIV.  
     
2. Jika klien belum mau untuk memulai metode kontrasepsi sekarang, berikan ia kondom atau kontrasepsi oral dan minta ia untuk menggunakannya jika ia berubah pikiran. Jelaskan instruksi penggunaan.  
     
3. Jika memungkinkan berikan klien beberapa pil Kontrasepsi Darurat untuk digunakan di masa depan seadainya terjadi hubungan seksual tanpa proteksi.

**Kapan Memulai Kontrasepsi Setelah Pemakaian Pil Kontrasepsi Darurat**

| Metode | Kapan Memulai |
| :---: | ----- |
| **Kontrasepsi Oral Kombinasi, Pil Progestin, Koyo Kombinasi, Cincin Vagina Kombinasi** | Dapat dimulai sehari setelah ia meminum Pil Kontrasepsi Darurat.  Tidak perlu menunggu periode menstruasi berikutnya. Kontrasepsi oral dan cincin vagina: \- Pengguna baru harus memulai paket pil atau cincin baru. \- Pengguna sebelumnya yang membutuhkan pil Kontrasepsi Darurat karena kesalahan dapat meneruskan penggunaan seperti sebelumnya. Koyo: \- Semua pengguna harus memulai koyo baru. Semua wanita perlu menggunakan metode cadangan dalam 7  |
| **Injeksi Prongestin** | Klien dapat memulai injeksi Progestin pada hari yang sama saat meminum Pil Kontrasepsi Darurat, atau dalam 7 hari setelah dimulainya menstruasi. Ia akan membutuhkan metode cadangan pada 7 hari pertama setelah injeksi. Ia harus kembali jika mengalami tanda dan gejala kehamilan selain tidak menstruasi. |
| **Injeksi Bulanan** | Klien dapat mulai injeksi bulanan pada hari yang sama saat meminum pil Kontrasepsi Darurat. Tidak perlu menunggu menstruasi berikutnya. Ia membutuhkan metode cadangan dalam 7 hari setelah injeksi. |
| **Implan** | Setelah menstruasi bulanan telah kembali. Berikan klien metode cadangan atau kontrasepsi oral untuk digunakan sampai menstruasi kembali, dimulai hari setelah selesai minum pil Kontrasepsi Darurat. |
| **AKDR (Copper atau hormonal)** | AKDR copper dapat digunakan sebagai kontrasepsi darurat. Metode ini merupakan pilihan yang baik bagi wanita yang ingin menggunakan AKDR sebagai metode kontrasepsi jangka panjang. Jika klien memutuskan untuk menggunakan AKDR setelah minum pil kontrasepsi darurat, AKDR dapat dimasukkan pada hari yang sama ia meminum pil Kontrasepsi Darurat. Tidak perlu metode cadangan. |
| **Kondom Pria dan Wanita, spermisid, diafragma, Tudung Serviks, Metode Penarikan** | Segera |
| **Metode Kesadaran Kesuburan** | Metode kalender: Dengan dimulainya periode menstruasi berikutnya Metode berdasarkan tanda dan gejala (Symptoms-based methods): Ketika sekresi normal sudah kembali Berikan klien metode cadangan atau kontrasepsi oral untuk dipakai sampai ia dapat memulai metode pilihannya sendiri. |


''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(title: 'Implan',),
        body: _body(context));
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Column(
        children: [
          MarkdownBody(
            data: implanMd1,
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
