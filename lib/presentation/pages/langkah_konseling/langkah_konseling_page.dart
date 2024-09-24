import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class LangkahKonselingPage extends StatelessWidget {
  const LangkahKonselingPage({super.key});

  static const String langkahKonselingMd1 = '''
Dalam memberikan konseling, khususnya bagi calon klien KB yang baru, hendaknya dapat diterapkan enam Langkah yang sudah dikenal engan kata kunci SATU TUJU. Penerapa SATU TUJU tersebut tidak perlu dilakukan secara berurutan karena petugas harus menyesuaikan diri engan kebutuhan klien. Kata kunci SATU TUJU adlah sebagai berikut.

* **SA : Sapa dan salam kepada klien dengan terbuka dan sopan.**  
  Berikan perhatian sepenuhnya kepada mereka dan bicaralah di tempat yang nyaman serta terjamin privasinya. Yakinkan klien untuk membangun rasa percara dirinya. Tanyakan kepada klien apa yang perlu dibantu serta jelaskan pelayanan apa yang dapat diperolehnya.

* **T : Tanyakan pada klien informas tentang dirinya.**  
  Bantu klien untuk berbicara mengenai pengalaman keluarga berencana dan Kesehatan reproduksi,tujuan,kepentingan,harapan, serta keadaan Kesehatan dan kehidupan keluarganya.
  
''';

  static const String langkahKonselingMd2 = '''
Tanyakan kontrasepsi yang diinginkan oleh klien. Berikan perhatian kepadaklien pa yang disampaikan klien esuai engan kata-kata, gerak isyarat dan caranya. Coba tempatkan diri kita di posisi klien. Perhatikan bahwa kita memahami pengetahuan,agar kita dapat membantunya.

* **U: Uraikan kepada klien mengenai pilihannya dan beritahu apa pilihan reproduksi yang paling sesuai, serta alternatif pilihan beberapa jenis kontrasepsi yang lain.**

  Bantulah klien mendapatkan informasi mengenai jenis kontrasepsi yang paling dia inginkan,serta jelaskan pula jenis-jenis kontrasepsi lain yang ada. Jelaskan pula alternatif kontrasepsi lain yang mungkin diinginkan oleh klien. Uraikan juga mengenai risiko penularan penyakit menular seksual termasuk HIV/AIDS dan pilihan metode ganda.

Informasi mengenai berbagai jenis metode kontrasepsi tersedia dalam aplikasi ini,dan dapat diperoleh dengan memilih menu "Macam-macam Metode Kontrasepsi an Cara Penggunaannya" serta "Tingkat Efektivitas Metode Kontrasepsi".

* **TU: Bantulah klien menentukan**  
   Bantulah lien menentukan metode kontrasepsi yang paling sesuai dengan keadaan dan kebutuhannya engan cara sebagai berikut.

Pertama, doronglah klien untuk menunjukkan keinginannya an mengajukan pertanyaan,lalu tanggapilah secara terbuka.  
Kemudian, lakukan pemeriksaan yang diperlakukan untuk melakukan penapisan klien berdasarkan kriteria kelayakan medis. Daftar pemeriksaan yang perlu dilakukan dapat dilihat di menu Bantulah klien mempertimbangkan pilihan metode kontrasepsinya dengan memperhatikan kriteria-kriteria kelayakan medis. Buka menu "Penapusan Klien Berdasarkan Kriteria Kelayakan Medis" untuk menjawab beberapa pertanyaan yang dapat membantu Anda menentukan alternatif pilihan metode kontrasepsi yang aman bagi pasien. Pertimbangan juga dapat dilakukan dengan menggunakan diagram lingkaran yang ada di menu "Diagram Lingkaran Kriteria Kelayakan Medis." Untuk pasien engan keadaan khusus" Tanyakan Kembali keinginan klien mengenai metode kontrasepsi pilihannya.Tanyakan juga apakah pasangannya akan memberikan dukungan terhadap pilihannya tersebut dengan pasangannya. kemudian, yakinkan bahwa klien telah membuat suatu keputusan yang tepat dengan menanyakan: Apakah Anda sudah memutuskan pilihan jenis kontrasepsi?Atau apa jenis kontrasepsi terpilih yang akan digunakan?

*  **J: jelaskan secara lengkap bagaimana menggunakan kontrasepsi pilihannya.**
  Setelah klien memilih jenis kontrasepsinya.jika diperlukan,perlihatkan alat/obat kontrasepsinya. Jelaskan bagaimana alat/obat kontrasepsi tersebut digunakan dan bagaimana cara penggunaannya. Sekali lagi doronglah klien untuk bertanya dan petugas menjawab secara jelas dan terbuka. Beri penjelasan juga tentang manfaat ganda metode kontrasepsi,misalnya kondom yang dapat mencegah infeksi menular seksual (IMS). Cek pengetahuan klien entang penggunaan kontrasepsi pilihannya dan puji klien apabila dapat menjawab dengan benar.

  Jika klien ingin menggunakan metode kontrasepsi ersebut saat ini juga, lakukan penapisan kehamilan yang da dalam menu "Penapusan Kehamilan".

* **U: Rencanakan kunjungan Ulang.**   
  Bicarakan an buatlah perjanjian kapan klien akan Kembali untuk melakukan pemeriksaan lanjutan atau permintaan kontrasepsi jika dibutuhkan. ingatkan klien untuk Kembali apabila terjadi suatu maslaah, atau rujuklah klien kepada tenaga Kesehatan atau fasilitas Kesehatan yang lebih memadai apabila terdapat kesulitan dan masalah yang tidak dapat diselesaikan.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Langkah Konseling',
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
              data: langkahKonselingMd1,
              styleSheet: context.markdownStyleSheet,
            ),
            const Gap(Sizes.p16),
            GestureDetector(
              onTap: () => _navigateToPhotoDetail(context,
                  AppIcons.imagelangkahKonseling, 'Pilihan Metode Kontrasepsi'),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.p16),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  AppIcons.imagePlaceholder,
                ),
              ),
            ),
            const Gap(Sizes.p16),
            MarkdownBody(
              data: langkahKonselingMd2,
              styleSheet: context.markdownStyleSheet,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToPhotoDetail(
      BuildContext context, String imageUrl, String title) {
    context.router.push(PhotoDetailRoute(photoUrl: imageUrl, pageTitle: title));
  }
}
