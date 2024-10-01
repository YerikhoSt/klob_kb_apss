import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/config/theme/app_colors.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class CincinVaginaPage extends StatelessWidget {
  const CincinVaginaPage({super.key});

  static const String cincinVaginaMd1 = '''
***Cincin Vagina Kombinasi***

Cincin Vagina Kombinasi adalah cincin fleksibel yang disimpan di dalam vagina. Secara kontinyu melepaskan 2 hormon – progestin dan estrogen, seperti hormon progesteron dan estrogen alami dalam tubuh wanita – dari dalam cincin. Hormon diserap melalui dinding vagina langsung ke aliran darah. Cincin disimpan di dalam vagina selama 3 minggu, kemudian dilepaskan selama minggu keempat. Pada minggu keempat ini, wanita akan menstruasi. Bekerja secara utama mencegah sel telur dari ovarium (ovulasi)

***Menjelaskan Cara Penggunaan***

| Jelaskan bagaimana cara memasukan cincin | Klien dapat memilih posisi yang paling nyaman baginya – sebagai contoh, berdiri dengan satu kaki diangkat, berjongkok, atau berbaring Klien harus menekan kedua sisi cincin bersamaan dan secara lembut mendorong cincin masuk ke dalam vagina Posisi yang tepat tidaklah penting, namun memasukan cincin semakin dalam membuatnya tetap di tempat dan klien akan kurang merasakan cincin tersebut. Otot-otot vagina secara alami mempertahankan cincin tetap di tempat. |
| ----- | :---- |
|  |   ![image1](assets/images/img_cincin.png) |
| **Jelaskan bahwa cincin ditempatkan di vagina selama 3 minggu** | Klien harus mempertahankan cincin di tempatnya sepanjang waktu, setiap hari dan malam selama 3 minggu. Klien dapat melepaskan cincin pada akhir minggu ketiga dan membuangnya. |
| Klien harus melepaskan cincin pada minggu keempat | Untuk melepaskan cincin, klien harus memasukan jari telunjuknya ke dalam vagina dalam posisi seperti mengait, atau mengambil cincin di antaranya jari tengah dan jari telunjuk, dan menariknya Klien mungkin akan menstruasi pada minggu in i Jika klien lupa dan cincin  tidak dilepas selama minggu keempat, tidak perlu tindakan khusus |
| Cincin tidak boleh dilepaskan lebih dari 3 jam sebelum minggu keempat | Cincin dapat dilepas untuk berhubungan seksual, dibersihkan atau alasan yang lain, walaupun melepas sebenarnya tidak perlu Jika cincin terlepas keluar, klien harus mencucinya dengan air bersih dan segera memasukannya kembali |

***Instruksi untuk Penggantian atau Pelepasan yang Terlambat***

| Melepas cincin lebih dari 3 jam pada minggu 1 atau 2 | Masukan cincin kembali sesegera mungkin. Gunakan metode cadangan pada 7 hari berikutnya |
| :---: | :---- |
| **Melepas cincin lebih dari 3 jam pada minggu ke 3** | Hentikan siklus saat ini dan buang cincin Masukan cincin baru segera dan diamkan di vagina selama 3 minggu, mulai siklus baru. Gunakan metode cadangan untuk 7 hari berikutnya (Pilihan yang lain adalah, jika cincin digunakan terus-menerus dan secara menerus selama 7 hari terakhir: Biarkan cincin lepas dan jadikan 7 hari berikutnya tanpa cincin. Setelah 7 hari tersebut, masukan cincin baru, mulai siklus baru, dan pertahankan selama 3 minggu. Gunakan metode cadangan dalam 7 hari pertama dengan cincin pertama). |
| **Tunggu lebih dari 7 hari sebelum memasukan cincin yang baru atau membiarkan cincin dalam vagina lebih dari 4 minggu** | Masukan cincin baru sesegera mungkin dan mulai siklus 4 minggu yang baru. Gunakan metode cadangan pada 7 hari pertama pemakaian cincin Dan apabila cincin baru, dimasukan terlambat 3 hari atau lebih (cincin dilepas selama 10 hari atau lebih berturut-turut) dan hubungan seksual tanpa proteksi terjadi dalam 5 hari terakhir, pertimbangkan untuk minum pil kontrasepsi darurat |


''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(title: 'Cincin Vagina Kombinasi',),
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
              data: cincinVaginaMd1,
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
      ),
    );
  }

  void _navigateToPhotoDetail(BuildContext context, String imageUrl) {
    context.router.push(PhotoDetailRoute(photoUrl: imageUrl));
  }
}
