import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class VasektomiPage extends StatelessWidget {
  const VasektomiPage({super.key});

  static const String vasektomiMd1 = '''
***Vasektomi***  
Vasektomi adalah kontrasepsi permanen pada pria yang tidak mau memiliki anak lagi. Memalui sebuah insisi kecil tenaga medis memotong atau mengikat dua saluran yang membawa sperma ke penis (vas deferens). Juga disebut sebagai sterilisasi pria atau kontrasepsi bedah pria.

***Melakukan Prosedur Vasektomi***  
Seorang tenaga medis harus dapat menjelaskan mengenai prosedur Vasektomi kepada klien. Untuk dapat melakukan Vasektomi, seorang tenaga kesehatan perlu mendapatkan pelatihan khusus dan pratik di bawah pengawasan langsung. Oleh karena itu berikut ini merupakan ringkasan langkah-langkah prosedur Vasektomi dan bukan merupakan instruksi rinci.

1. Tenaga medis melakukan prosedur pencegahan infeksi yang tepat sepanjang tindakan.  
     
2. Klien mendapatkan injeksi anestesi lokal pada skrotumnya untuk mengurangi nyeri. Klien akan tetap sadar sepanjang prosedur.  
     
3. Tenaga medis meraba kulit pada skrotum untuk menemukan setiap vas deferens- dua saluran dalam skrotum yang membawa sperma.  
     
4. Tenaga medis membuat insisi pada kulit:  
* Menggunakan teknik vasektomi tanpa skalpel, tenaga medis menggenggam tuba dengan forcep yang dirancang khusus dan membuat suatu lubang kecil pada kulit pada garis tengah dari skrotum dengan instrumen bedah khusus.


  ![image1](assets/images/img_vasektomi.png)


* Menggunakan teknik konvensional, tenaga medis membuat 1 atau 2 insisi kecil pada kulit dengan skalpel.

5. Tenaga medis menarik saluran vas deferens keluar dari lokasi insisi. Kebanyakan tenaga medis akan memotong setiap saluran dan mengikat salah satu atau kedua ujung dengan benang. Beberapa tenaga medis akan menutup saluran dengan kauter.  
     
6. Insisi dapat ditutup dengan jahitan. Lubang ditutup dengan perban adhesif.  
     
7. Klien akan menerima instruksi apa yang harus dilakukan saat pulang dari Rumah Sakit atau Klinik.

**Menjelaskan mengenai Perawatan Pribadi untuk Tindakan Vasektomi**

| Sebelum prosedur, klien harus: | Gunakan pakaian bersih, longgar saat datang ke Rumah Sakit |
| :---: | :---- |
| **Setelah prosedur, klien harus:** | Beristirahat selama 2 hari jika memungkinkan. Jika memungkinkan, kompres dingin pada skrotum selama 4 jam pertama, yang akan mengurangi nyeri dan perdarahan. Klien akan merasa sedikit tidak nyaman, bengkak, memar. Hal ini akan hilang dalam 2 sampai 3 hari. Gunakan pakaian dalam atau celana yang pas untuk menyangga skrotum. Hal ini akan mengurangi bengkak, perdarahan dan nyeri. Menjaga agar luka insisi bersih dan kering selama 2 sampai 3 hari. Tidak berhubungan seksual selama 2 sampai 3 hari. Gunakan kondom atau metode yang lain 3 bulan setelah prosedur. |
| **Apa yang harus dilakukan terhadap gejala yang umum terjadi** | Klien mungkin saja mengalami nyeri skrotum 2 sampai 3 hari. Sarankan ibuprofen (325-1000 mg) atau anti nyeri yang lain. Klien tidak boleh minum aspirin. |
| **Rencanakan kunjungan tindak lanjut** | Katakan pada klien agar kembali dalam 3 bulan untuk analisa cairan semen. |

''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(
          title: 'Vasektomi',
        ),
        body: _body(context));
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Column(
        children: [
          MarkdownBody(
            data: vasektomiMd1,
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
