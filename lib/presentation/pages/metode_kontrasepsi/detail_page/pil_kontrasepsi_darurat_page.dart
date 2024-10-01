import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class PilKontrasepsiDaruratPage extends StatelessWidget {
  const PilKontrasepsiDaruratPage({super.key});

  static const String pilKontrasepsiDaruratMd1 = '''
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
        appBar: const PrimaryAppBar(
          title: 'Pil Kontrasepsi Darurat',
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
              data: pilKontrasepsiDaruratMd1,
              styleSheet: context.markdownStyleSheet,
            ),
          ],
        ),
      ),
    );
  }
}
