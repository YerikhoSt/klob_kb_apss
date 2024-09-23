import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gap/gap.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class ProgestogenInjectablesPage extends StatelessWidget {
  const ProgestogenInjectablesPage({super.key});

  static const String progestogenInjectablesMd1 = '''
***Injeksi Progestin***

Injeksi kontrasepsi Depot Medroxyprogesterone Acetate (DMPA) dan Norethisterone Enanthate (NET-EN) masing-masing mengandung hormon progestin seperti progesteron alami dalam tubuh wanita. Kontrasepsi ini tidak mengandung estrogen, sehingga dapat digunakan selama menyusui dan oleh wanita yang tidak dapat menggunakan metode dengan estrogen. DMPA dikenal juga dengan istilah Depo, Depo-Provera, Megestron, Petogen. NET-EN juga dikenal dengan istilah norethindrone enanthate, Noristerat dan Syngestal. Kontrasepsi ini diberikan secara IntraMuscular. Bekerja secara utama dengan mencegah pelepasan sel telur dari ovarium (Ovulasi). ***Kapan Memulai?***

**PENTING**: Seorang wanita dapat mulai diberi injeksi kapan pun dia inginkan jika yakin tidak sedang hamil. Untuk meyakinkan klien tidak hamil, gunakan ceklis penapisan kehamilan.

| Situasi | Kapan Memulai |
| ----- | ----- |
| **Memiliki Siklus Menstruasi atau Beralih Dari Metode Nonhormonal** | **Injeksi dapat diberikan kapanpun klien inginkan**  Jika klien diberi injeksi dalam 7 hari setelah dimulainya menstruasi, tidak perlu menggunakan metode cadangan Jika lebih dari 7 hari setelah dimulainya menstruasi, klien dapat diberi injeksi kapan pun jika ia yakin tidak hamil. Klien membutuhkan metode cadangan untuk 7 hari pertama setelah injeksi. Jika klien beralih dari AKDR, ia dapat segera diberikan injeksi. |
| **Beralih dari Metode Hormonal** | Segera, jika ia telah menggunakan metode hormonal secara konsisten dan benar atau jika klien yakin ia tidak hamil. Tidak perlu menunggu periode menstruasi berikutnya. Tidak perlu metode cadangan. Jika klien beralih dari injeksi yang lain, ia dapat mendapatkan injeksi baru pada saat injeksi ulangan seharusnya diberikan. Tidak perlu metode cadangan. |
| **Menyusui secara eksklusif atau hampir ekskulusif** Kurang dari 6 bulan setelah melahirkan Lebih dari 6 bulan setelah melahirkan |  Jika klien melahirkan kurang dari 6 minggu yang lalu, tunda injeksi pertama sampai setidaknya 6 minggu setelah melahirkan. Jika klien belum mendapat menstruasi bulanannya, klien dapat mulai diberi injeksi kapan pun di antara 6 minggu dan 6 bulan. Tidak perlu metode cadangan. Jika klien sudah mendapat menstruasi bulanannya, ia dapat mulai diberikan injeksi seperti yang disarankan pada wanita yang memiliki siklus menstruasi (lihat poin sebelumnya).   Jika klien belum mendapat menstruasi bulanan, ia dapat mulai diberi injeksi kapan pun jika yakin ia tidak hamil. Klien membutuhkan metode cadangan pada 7 hari pertama setelah injeksi. Jika klien sudah mendapat menstruasi bulanannya, klien dapat diberi injeksi seperti disarankan pada wanita yang memiliki siklus menstruasi (lihat poin sebelumnya).  |
| **Menyusui secara parsial**  Kurang dari 6 minggu setelah melahirkan | Tunda injeksi pertamanya sampai setidaknya 6 minggu setelah melahirkan. |
| Lebih dari 6 minggu setelah melahirkan | Jika belum mendapatkan menstruasi bulanan, klien dapat diberi injeksi kapan pun jika diyakinkan ia tidak hamil. Klien dapat diberikan metode cadangan untuk 7 hari pertama setelah injeksi. Jika klien sudah mulai mendapatkan menstruasi, klien dapat diberikan injeksi sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi. |
| **Tidak Menyusui**    Kurang dari 4 minggu setelah melahirkan   Lebih dari 4 minggu setelah melahirkan | Klien dapat diberi injeksi kapan saja. Tidak perlu metode cadangan. Jika klien belum mendapatkan menstruasi bulanannya, ia dapat diberi injeksi kapan pun jika benar-benar yakin klien tidak hamil. Klien membutuhkan metode cadangan untuk 7 hari pertama setelah diberi injeksi. Jika klien sudah mulai mendapatkan menstruasi, klien dapat diberi injeksi sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi. |
| **Tidak menstruasi**  (Tidak berkaitan dengan melahirkan dan menyusui) | Klien dapat suntik kapan pun jika yakin tidak hamil. Klien membutuhkan metode cadangan dalam 7 hari pertama setelah injeksi. |
| **Setelah keguguran/ abortus** | Segera. Jika ia diberi suntik dalam 7 hari setelah keguguran trimester 1 atau 2, tidak membutuhkan metode cadangan. Jika lebih dari 7 hari setelah keguguran trimester 1 atau 2, klien dapat mulai diberi suntikan kapan pun jika ia benar-benar yakin tidak hamil. Ia membutuhkan metode cadangan untuk 7 hari pertama setelah diberi injeksi. |
| **Setelah meminum Pil Kontrasepsi Darurat** | Klien dapat diinjeksi pada hari yang sama meminum pil kontrasepsi darurat, atau jika lebih diinginkan dalam 7 hari setelah mulainya menstruasi. Klien membutuhkan metode cadangan pada 7 hari pertama setelah injeksi. Klien harus segera kembali jika memiliki tanda dan gejala kehamilan selain tidak menstruasi.   |

***Memberikan Kontrasepsi Injeksi***

| Siapkan satu dosis injeksi, jarum, dan semprit | DMPA: 150 mg injeksi ke dalam otot (injeksi intramuskular). NET-EN: 200 mg untuk injeksi ke dalam otot. Jika memungkinkan, gunakan vial dosis tunggal. Periksa tanggal kadaluarsa. Jika menggunakan vial multidosis yang terbuka, periksa apakah vial bocor atau tidak. DMPA: Semprit 2 ml dan jarum intramuskular ukuran 21-23. NET-EN: Semprit 2 atau 5 ml dan jarum intramuskular ukuran 19\. Jarum yang lebih kecil (21-23) dapat juga digunakan. Untuk setiap injeksi gunakan semprit sekali pakai dan jarum yang baru dan bersegel (sebelum tanggal kadaluarsa dan tidak rusak), jika tersedia.  |
| :---- | :---- |
| **Cuci** | Cuci tangan dengan sabun dan air jika memungkinkan. Jika area suntik kotor, cuci dengan sabun dan air. Tidak perlu membersihkan area suntik dengan antiseptik.  |
| **Siapkan Vial** | DMPA: Goyang vial dengan lembut. NET-EN: Tidak perlu menggoyangkan vial. Tidak perlu membersihkan bagian atas vial dengan antiseptik. Jika vial dingin, hangatkan dengan suhu kulit sebelum disuntikkan.  |
| **Isi Semprit** | Lubangi bagian atas vial dengan jarum steril dan isi semprit dengan dosis yang tepat. |
| **Suntikkan** | Masukan jarum steril ke dalam pinggul (otot ventrogluteal), tangan bagian atas (otot deltoid), atau bokong (otot gluteal, bagian luar atas), tergantung preferensi klien. Suntikkan isi dari semprit. Jangan menggosok tempat injeksi.  |
| **Buang Semprit dan Jarum Sekali Pakai dengan Aman** | Jangan tekuk atau mematahkan jarum sebelum dibuang. Tempatkan dalam kontainer anti-tembus Jangan menggunakan kembali semprit dan jarum sekali pakai. Karena bentuknya sulit didisinfeksi. Oleh karena itu, penggunaan kembali dapat menularkan penyakit seperti HIV dan hepatitis. Jika menggunakan semprit dan jarum yang dapat digunakan, mereka harus disterilisasi setiap habis penggunaan.  |

***Merencanakan Injeksi Berikutnya***

1. Tentukan tanggal injeksi berikutnya 3 bulan ke depan (13 minggu) untuk DMPA, atau 2 bulan (8 minggu) untuk NET-EN.  
     
2. Minta klien agar datang sesuai tanggal yang ditentukan. Dengan DMPA, klien masih bisa 4 minggu terlambat dari jadwal suntik seharusnya. Dengan NET-EN, klien masih bisa 2 minggu terlambat dari jadwal suntik seharusnya. Baik dengan DMPA atau NET-EN, klien dapat datang 2 minggu lebih awal.

3. Klien harus kembali kontrol walaupun klien terlambat dari jadwal suntikan seharusnya. Jika terlambat suntik DMPA lebih dari 4 minggu atau terlambat suntik NET-EN lebih dari 2 minggu, klien tidak boleh berhubungan seksual dulu sementara (abstain), atau gunakan kondom, spermisid, atau gunakan metode menarik (withdrawal) sampai ia mendapatkan suntikannya. Juga jika klien berhubungan seksual 5 hari sebelumnya tanpa menggunakan metode kontrasepsi, ia dapat mempertimbangkan pil Kontrasepsi Darurat.

''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(
          title: 'Progestogen-only injectables',
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
              data: progestogenInjectablesMd1,
              styleSheet: context.markdownStyleSheet,
            ),
            // const Gap(16),
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
