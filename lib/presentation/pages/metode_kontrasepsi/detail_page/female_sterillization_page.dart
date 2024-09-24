import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class FemaleSterillizationPage extends StatelessWidget {
  const FemaleSterillizationPage({super.key});

  static const String sterillizationMd1 = '''
***Sterilisasi Wanita***

Sterilisasi merupakan kontrasepsi permanen untuk wanita yang tidak ingin mempunyai anak lagi. Dua cara pembedahan yang paling sering dilakukan adalah: 1\) Minilaparotomy dan 2\) Laparoskopi. Sterilisasi wanita juga disebut sterilisasi tuba, ligasi tuba, kontrasepsi bedah suka-rela, tubektomi. Bekerja secara utama dengan menutup atau memotong tuba fallopi, sehingga sel telur tidak dapat bertemu dengan sperma.

***Kapan Prosedur Dapat Dilakukan***

| Situasi  | Kapan Memulai  |
| :---: | ----- |
| **Memiliki siklus menstruasi atau beralih dari metode lain** | **Tubektomi dapat dipasang kapanpun klien inginkan** Tubektomi dapat dilakukan dalam 7 hari setelah mulainya menstruasi. Jika lebih dari 7 hari setelah mulainya menstruasi, Tubektomi dapat dilakukan kapan pun selama klien yakin ia tidak hamil. Jika klien beralih dari kontrasepsi oral, ia dapat meneruskan minum pil sampai klien menyelesaikan paketnya untuk menjaga keteraturan siklus haidnya. Jika ia beralih dari AKDR, tubektomi dapat langsung dikerjakan.  |
| **Tidak menstruasi** | Dapat dilakukan kapanpun, selama klien yakin tidak hamil. |
| **Setelah Melahirkan** | Segera atau dalam 7 hari setelah melahirkan jika sebelumnya klien sudah membuat keputusan setelah diedukasi dan secara suka rela. Kapan pun setelah 6 minggu pasca melahirkan jika klien yakin tidak hamil. |
| **Setelah keguguran/ abortus** | Dalam 48 jam setelah keguguran tanpa komplikasi, jika sebelumnya klien sudah membuat keputusan setelah diedukasi dan secara suka rela. |
|  **Setelah meminum Pil Kontrasepsi Darurat** | Tubektomi dapat dilakukan dalam 7 hari setelah dimulainya menstruasi bulan berikutnya atau kapanpun klien yakin ia tidak hamil. Berikan klien metode cadangan, atau kontrasepsi oral untuk mulai diminum pada hari setelah ia selesai meminum pil Kontrasepsi Darurat, digunakan sampai tubektomi dilakukan. |

***Melakukan Prosedur Sterilisasi***

Seorang tenaga medis harus dapat menjelaskan mengenai prosedur Tubektomi kepada klien. Untuk dapat melakukan Tubektomi, seorang tenaga kesehatan perlu mendapatkan pelatihan khusus dan pratik di bawah pengawasan langsung. Oleh karena itu berikut ini merupakan ringkasan langkah-langkah prosedur Tubektomi dan bukan merupakan instruksi rinci.

(Deskripsi di bawah ini merupakan prosedur yang dilakukan lebih dari 6 minggu setelah melahirkan. Prosedur yang dilakukan dalam 7 hari setelah melahirkan sedikit berbeda.)

Prosedur Minilaparotomi

1. Tenaga medis melakukan prosedur pencegahan infeksi yang tepat selama tindakan Tubektomi.  
     
2. Tenaga medis melakukan pemeriksaan fisik dan pemeriksaan pelvis. Pemeriksaan pelvis untuk menilai kondisi dan mobilitas uterus.  
     
3. Klien biasanya akan mendapatkan sedasi ringan (dengan pil atau ke dalam vena) untuk membuat klien rileks. Klien tetap sadar. Anestesi lokal diinjeksikan di atas garis rambut pubis.  
     
4. Tenaga medis membuat sebuah insisi vertikal yang kecil (2-5 cm) pada area yang dianestesi. Hal ini biasanya menimbulkan sedikit nyeri. (Pada wanita yang baru melahirkan, insisi dibuat horizontal pada tepi bawah pusar.  
     
5. Tenaga medis memasukan instrumen khusus (levator uterus) ke dalam vagina, melalui serviks dan ke dalam uterus untuk menaikkan kedua tuba fallopi sehingga keduanya lebih dekat ke arah insisi. Hal ini dapat menimbulkan ketidaknyamanan.  
     
6. Setiap tuba diikat dan dipotong atau ditutup dengan clip atau cincin.  
     
7. Tenaga medis menutup insisi dengan jahitan dan menutupnya dengan perban adhesif.  
     
8. Klien akan menerima instruksi apa yang harus dilakukan ketika pulang dari rumah sakit.

Prosedur Laparoskopi

1. Tenaga medis melakukan prosedur pencegahan infeksi yang tepat selama tindakan Tubektomi.  
     
2. Tenaga medis melakukan pemeriksaan fisik dan pemeriksaan pelvis. Pemeriksaan pelvis untuk menilai kondisi dan mobilitas uterus.  
     
3. Klien biasanya akan mendapatkan sedasi ringan (dengan pil atau ke dalam vena) untuk membuat klien rileks. Klien tetap sadar. Anestesi lokal diinjeksikan di bawah pusar.  
     
4. Tenaga medis memasukan jarum khusus ke dalam perut klien dan melalui jarum tersebut, mengembangkan perut dengan gas atau udara. Hal ini menaikkan dinding abdomen jauh dari organ pelvis.  
     
5. Tenaga medis membuat insisi kecil (sekitar 1 cm) dalam area yang dianestesi dan laparoskop. Laparoskop merupakan tabung tipis yang panjang yang memiliki lensa. Melalui lensa ini tenaga medis dapat melihat ke dalam perut dan menemukan 2 buah tuba fallopi.  
     
6. Tenaga medis memasukan instrumen melalui laparoskop (atau terkadang melalui insisi kedua) untuk menutup tuba fallopi.  
     
7. Setiap tuba ditutup dengan klip atau cincin atau dengan elektrokoagulasi.  
     
8. Tenaga medis mengeluarkan instrumen dan laparoskop. Gas atau udara dikeluarkan dari perut klien. Tenaga medis lalu menutup insisi dengan jahitan dan menutupnya dengan pembalut adhesif.  
     
9. Klien menerima instruksi apa yang harus dilakukan setelah pulang dari Rumah Sakit.

***Menjelaskan mengenai Perawatan Pribadi untuk Tindakan Sterilisasi***

| Sebelum prosedur, klien harus: | Menggunakan kontrasepsi lain sampai tindakan dikerjakan Tidak makan apapun dalam 8 jam sebelum pembedahan. Klien dapat minum air mineral sampai 2 jam sebelum pembedahan. Tidak perlu minum obat apa pun dalam 24 jam sebelum pembedahan (kecuali jika klien diinstruksikan sebaliknya). Gunakan pakaian bersih, longgar saat datang ke Rumah Sakit Tidak menggunakan cat kuku atau perhiasan Jika memungkinkan, ajak teman atau kerabat untuk menolong klien untuk pulang selesai tindakan.   |
| :---: | :---- |
| **Setelah prosedur, klien harus:** | Beristirahat selama 2 hari dan menghindari bekerja berlebihan dan mengangkat berat selama 1 minggu. Menjaga agar luka insisi bersih dan kering selama 1 sampai 2 hari. Hindari menyentuh insisi selama 1 minggu. Tidak berhubungan seksual selama setidaknya 1 minggu. Jika nyeri bertahan lebih dari 1 minggu, hindari hubungan seksual sampai nyeri hilang  |
| **Apa yang harus dilakukan terhadap gejala yang umum terjadi** | Klien mungkin saja mengalami nyeri perut dan pembengkakkan setelah prosedur. Biasanya akan hilang dalam beberapa hari. Sarankan ibuprofen (325-1000 mg) atay anti nyeri yang lain. Klien tidak boleh minum aspirin. Jika klien mendapat tindakan laparoskopi, klien mungkin saja akan merasa nyeri bahu atau kembung selama beberapa hari.   |
| **Rencanakan kunjungan tindak lanjut** | Disarankan untuk melakukan tindak lanjut dalam 7 hari atau setidaknya dalam 2 minggu. Tenaga medis memeriksa lokasi insisi, melihat tanda-tanda infeksi dan membuka jahitan. |

''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(
          title: 'Female steerilization',
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
              data: sterillizationMd1,
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
