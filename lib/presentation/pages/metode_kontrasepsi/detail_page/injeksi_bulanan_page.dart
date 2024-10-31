import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class InjeksiBulananPage extends StatelessWidget {
  const InjeksiBulananPage({super.key});

  static const String injeksiBulananMd1 = '''
***Injeksi Bulanan***

Injeksi bulanan mengandung 2 hormon-progestin dan estrogen- seperti hormon alami progesteron dan estrogen dalam tubuh wanita. Injeksi bulanan yang dimaksud adalah medroksiprogesteron asetat(MPA)/estradiol cypionate dan norethisterone enanthate (NET-EN)/estradiol valerate. MPA/estradiol cypionate nama dagangnya antara lain Ciclofem, Ciclofemina, Cyclo-Provera, Feminena, Lunella, Lunelle, Novafem dan lainnya. NET-EN/estradiol valerate nama dagangnya antara lain Mesigyna dan Norigynon. Bekerja secara utama dengan mencegah lepasnya sel telur dari ovarium (ovulasi).

***Kapan memulai?***

**PENTING**: Seorang wanita dapat mulai diberi injeksi kapanpun ia menginginkan jika yakin ia tidak hamil. Untuk meyakinkan klien hamil atau tidak, gunakan ceklis Penapisan Kehamilan. 

| Situasi | Kapan Memulai |
| ----- | ----- |
| **Memiliki Siklus Menstruasi atau Beralih Dari Metode Nonhormonal** | **Injeksi dapat diberikan kapanpun klien inginkan**  Jika klien diberi injeksi dalam 7 hari setelah dimulainya menstruasi, tidak perlu menggunakan metode cadangan. Jika lebih dari 7 hari setelah dimulainya menstruasi, klien dapat diberi injeksi kapan pun jika ia yakin tidak hamil. Klien membutuhkan metode cadangan untuk 7 hari pertama setelah injeksi. Jika klien beralih dari AKDR, ia dapat segera diberikan injeksi. |
|  **Beralih dari Metode Hormonal** | Segera, jika ia telah menggunakan metode hormonal secara konsisten dan benar atau jika klien yakin ia tidak hamil. Tidak perlu menunggu periode menstruasi berikutnya. Tidak perlu metode cadangan. Jika klien beralih dari injeksi yang lain, ia dapat mendapatkan injeksi baru pada saat injeksi ulangan seharusnya diberikan. Tidak perlu metode cadangan. |
| **Menyusui secara eksklusif atau hampir ekskulusif** |  |
| Kurang dari 6 bulan setelah melahirkan | Tunda injeksi pertama sampai setidaknya 6 bulan setelah melahirkan atau ketika ASI bukan merupakan asupan utama bayi.  |
| Lebih dari 6 bulan setelah melahirkan | Jika klien belum mendapat menstruasi bulanan, ia dapat mulai diberi injeksi kapan pun jika yakin ia tidak hamil. Klien membutuhkan metode cadangan pada 7 hari pertama setelah injeksi. Jika klien sudah mendapat menstruasi bulanannya, klien dapat diberi injeksi seperti disarankan pada wanita yang memiliki siklus menstruasi. |
| **Menyusui secara parsial**  Kurang dari 6 minggu setelah melahirkan | Tunda injeksi pertamanya sampai setidaknya 6 minggu setelah melahirkan. |
| Lebih dari 6 minggu setelah melahirkan | Jika belum mendapatkan menstruasi bulanan, klien dapat diberi injeksi kapan pun jika diyakinkan ia tidak hamil. Klien dapat diberikan metode cadangan untuk 7 hari pertama setelah injeksi. Jika klien sudah mulai mendapatkan menstruasi, klien dapat diberikan injeksi sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi. |
| **Tidak Menyusui**    Kurang dari 4 minggu setelah melahirkan     Lebih dari 4 minggu setelah melahirkan |  Klien dapat diberi injeksi kapan saja pada hari ke 21-28 setelah melahirkan. Tidak perlu metode cadangan.   Jika klien belum mendapatkan menstruasi bulanannya, ia dapat diberi injeksi kapan pun jika benar-benar yakin klien tidak hamil. Klien membutuhkan metode cadangan untuk 7 hari pertama setelah diberi injeksi. Jika klien sudah mulai mendapatkan menstruasi, klien dapat diberi injeksi   sebagaimana yang disarankan pada wanita yang memiliki siklus menstruasi. |
| **Tidak menstruasi**  (Tidak berkaitan dengan melahirkan dan menyusui) | Klien dapat suntik kapan pun jika yakin tidak hamil. Klien membutuhkan metode cadangan dalam 7 hari pertama setelah injeksi. |
| Setelah keguguran/ abortus | Segera. Jika ia diberi suntik dalam 7 hari setelah keguguran trimester 1 atau 2, tidak membutuhkan metode cadangan. Jika lebih dari 7 hari setelah keguguran trimester 1 atau 2, klien dapat mulai diberi suntikan kapan pun jika ia benar-benar yakin tidak hamil. Ia membutuhkan metode cadangan untuk 7 hari pertama setelah diberi injeksi. |
| Setelah meminum Pil Kontrasepsi Darurat |  Klien dapat diinjeksi pada hari yang sama meminum pil kontrasepsi darurat. Tidak perlu menunggu periode menstruasi berikutnya untuk mendapatkan suntikan. Klien membutuhkan metode cadangan pada 7 hari pertama setelah injeksi. |

***Langkah-Langkah Memberikan Injeksi***

| Siapkan satu dosis injeksi, jarum, dan semprit | 25 mg MPA/estradiol cypionate atau 50 mg NET-EN/estradiol valerate, jarum suntik intramuskular, dan semprit 2 ml atau 5 ml. Untuk setiap injeksi gunakan semprit sekali pakai dan jarum yang baru dan bersegel (sebelum tanggal kadaluarsa dan tidak rusak), jika tersedia.   |
| ----- | :---- |
| **Cuci** | Cuci tangan dengan sabun dan air jika memungkinkan. Jika area suntik kotor, cuci dengan sabun dan air. Tidak perlu membersihkan area suntik dengan antiseptik. |
| **Siapkan Vial** | MPA/estradiol cypionate: Goyang vial dengan lembut. NET-EN/estradiol valerate: Tidak perlu menggoyangkan vial. Tidak perlu membersihkan bagian atas vial dengan antiseptik . Jika vial dingin, hangatkan dengan suhu kulit sebelum disuntikkan  |
| **Isi Semprit** | Lubangi bagian atas vial dengan jarum steril dan isi semprit dengan dosis yang tepat. |
| **Suntikkan** | Masukan jarum steril ke dalam pinggul (otot ventrogluteal), tangan bagian atas (otot deltoid), atau bokong (otot gluteal, bagian luar atas), tergantung preferensi klien. Suntikkan isi dari semprit. Jangan menggosok tempat injeksi. |
| **Suntikkan** | ![image](assets/images/img_injek_bulanan.png) |
| **Buang Semprit dan Jarum Sekali Pakai dengan Aman** | Jangan tekuk atau mematahkan jarum sebelum dibuang. Tempatkan dalam kontainer anti-tembus Jangan menggunakan kembali semprit dan jarum sekali pakai. Karena bentuknya sulit didisinfeksi. Oleh karena itu, penggunaan kembali dapat menularkan penyakit seperti HIV dan hepatitis. Jika menggunakan semprit dan jarum yang dapat digunakan, mereka harus disterilisasi setiap habis penggunaan  |

***Merencanakan Injeksi Berikutnya***

1. Tentukan tanggal 4 minggu yang akan datang untuk injeksi bulanan.  
2. Minta klien agar datang sesuai tanggal yang ditentukan. Klien masih bisa 7 hari terlambat dari jadwal suntik seharusnya atau datang 7 hari lebih awal.  
3. Klien harus kembali kontrol walaupun klien terlambat dari jadwal suntikan seharusnya. Jika terlambat suntik lebih dari 7 hari, klien tidak boleh berhubungan seksual dulu sementara (abstain), atau gunakan kondom, spermisid, atau gunakan metode menarik (withdrawal) sampai ia mendapatkan suntikannya. Juga jika klien berhubungan seksual 5 hari sebelumnya tanpa menggunakan metode kontrasepsi atau jika klien terlambat datang lebih dari 7 hari, ia dapat mempertimbangkan pil Kontrasepsi Darurat.

''';

  static const String injeksiBulananHtml = '''
 <h2><em>Injeksi Bulanan</em></h2>

    <p class="indent">Injeksi bulanan mengandung 2 hormon—progestin dan estrogen—seperti hormon alami progesteron dan estrogen dalam tubuh wanita. Injeksi bulanan yang dimaksud adalah medroksiprogesteron asetat (MPA)/estradiol cypionate dan norethisterone enanthate (NET-EN)/estradiol valerate. Nama dagang untuk MPA/estradiol cypionate antara lain Ciclofem, Ciclofemina, Cyclo-Provera, Feminena, Lunella, Lunelle, Novafem, dan lainnya. Untuk NET-EN/estradiol valerate, nama dagangnya antara lain Mesigyna dan Norigynon. Injeksi ini bekerja dengan mencegah ovulasi (lepasnya sel telur dari ovarium).</p>

    <h3><em>Kapan Memulai?</em></h3>
    <p><strong>PENTING:</strong> Seorang wanita dapat mulai diberi injeksi kapanpun ia menginginkan, asalkan yakin tidak hamil. Gunakan <u>ceklist Penapisan Kehamilan</u> untuk memastikan.</p>

    <table>
        <thead>
            <tr>
                <th>Situasi</th>
                <th>Kapan Memulai</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Memiliki Siklus Menstruasi atau Beralih Dari Metode Nonhormonal</td>
                <td>
                    <strong>Injeksi dapat diberikan kapanpun klien inginkan</strong>
                    <ul>
                        <li>Jika diberikan dalam 7 hari setelah menstruasi, tidak perlu metode cadangan.</li>
                        <li>Jika lebih dari 7 hari setelah menstruasi, injeksi dapat diberikan jika yakin tidak hamil. Gunakan metode cadangan selama 7 hari pertama.</li>
                        <li>Jika beralih dari AKDR, injeksi dapat segera diberikan.</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>Beralih dari Metode Hormonal</td>
                <td>
                    <ul>
                        <li>Dapat diberikan segera jika metode hormonal digunakan dengan konsisten dan benar, atau yakin tidak hamil. Tidak perlu metode cadangan.</li>
                        <li>Jika beralih dari injeksi lain, berikan injeksi baru saat injeksi ulangan dijadwalkan. Tidak perlu metode cadangan.</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>Menyusui secara eksklusif atau hampir eksklusif<br>Kurang dari 6 bulan setelah melahirkan</td>
                <td>Tunda injeksi pertama hingga bayi berusia 6 bulan atau ketika ASI bukan asupan utama. Gunakan metode cadangan selama 7 hari pertama jika yakin tidak hamil.</td>
            </tr>
            <tr>
                <td>Lebih dari 6 bulan setelah melahirkan</td>
                <td>
                    <ul>
                        <li>Jika belum menstruasi, injeksi dapat diberikan kapanpun jika yakin tidak hamil. Gunakan metode cadangan selama 7 hari pertama.</li>
                        <li>Jika sudah menstruasi, ikuti panduan seperti untuk wanita dengan siklus menstruasi.</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>Tidak Menyusui<br>Kurang dari 4 minggu setelah melahirkan</td>
                <td>
                    Injeksi dapat diberikan antara hari ke 21-28 setelah melahirkan tanpa metode cadangan. Jika lebih dari 4 minggu, ikuti langkah yang sama untuk wanita dengan siklus menstruasi.
                </td>
            </tr>
            <tr>
                <td>Setelah keguguran/abortus</td>
                <td>
                    <ul>
                        <li>Dapat diberikan segera dalam 7 hari setelah keguguran tanpa metode cadangan.</li>
                        <li>Jika lebih dari 7 hari setelah keguguran, gunakan metode cadangan selama 7 hari pertama.</li>
                    </ul>
                </td>
            </tr>
        </tbody>
    </table>

    <h3><em>Langkah-Langkah Memberikan Injeksi</em></h3>

    <table>
        <tr>
            <td>1. Siapkan dosis injeksi, jarum, dan semprit</td>
            <td>
                <ul>
                    <li>Gunakan dosis MPA/estradiol cypionate atau NET-EN/estradiol valerate.</li>
                    <li>Selalu gunakan semprit dan jarum sekali pakai yang baru.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>2. Cuci tangan</td>
            <td>
                <ul>
                    <li>Cuci tangan dengan sabun dan air jika memungkinkan.</li>
                    <li>Jika area suntik kotor, cuci dengan sabun dan air.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>3. Siapkan vial</td>
            <td>
                <ul>
                    <li>Goyang vial MPA/estradiol cypionate dengan lembut sebelum digunakan.</li>
                    <li>Untuk NET-EN/estradiol valerate, tidak perlu menggoyang vial.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>4. Isi semprit</td>
            <td>Isi semprit dengan dosis yang tepat dari vial menggunakan jarum steril.</td>
        </tr>
        <tr>
            <td>5. Suntikkan</td>
            <td>
                <ul>
                    <li>Suntikkan di bagian tubuh yang sesuai (ventrogluteal, deltoid, atau gluteal).</li>
                    <li>Jangan menggosok tempat injeksi.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>Suntikkan</strong>
                <img src="InjekBulan.png" alt="Injection Guide">
            </td>
        </tr>
        <tr>
            <td>6. Buang semprit dan jarum dengan aman</td>
            <td>
                <ul>
                    <li>Tempatkan dalam kontainer anti-tembus.</li>
                    <li>Jangan menggunakan kembali semprit dan jarum sekali pakai.</li>
                </ul>
            </td>`
        </tr>
    </table>
<table>
    <thead>
        <tr>
            <th>Situasi</th>
            <th>Kapan Memulai</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Memiliki Siklus Menstruasi atau Beralih Dari Metode Nonhormonal</td>
            <td>
                Injeksi dapat diberikan kapanpun klien inginkan. Jika diberikan dalam 7 hari setelah menstruasi, tidak perlu metode cadangan. Jika lebih dari 7 hari setelah menstruasi, injeksi dapat diberikan jika yakin tidak hamil. Gunakan metode cadangan selama 7 hari pertama.
            </td>
        </tr>
        <tr>
            <td>Beralih dari Metode Hormonal</td>
            <td>
                Dapat diberikan segera jika metode hormonal digunakan dengan konsisten dan benar, atau yakin tidak hamil. Tidak perlu metode cadangan.
            </td>
        </tr>
        <!-- Tambahkan baris lainnya -->
    </tbody>
</table>

    <h3><em>Merencanakan Injeksi Berikutnya</em></h3>
    <ol>
        <li>Tentukan tanggal 4 minggu mendatang untuk injeksi bulanan berikutnya.</li>
        <li>Klien dapat datang 7 hari lebih awal atau 7 hari terlambat dari jadwal.</li>
        <li>Jika lebih dari 7 hari terlambat, gunakan metode cadangan seperti kondom hingga injeksi dilakukan.</li>
    </ol>
''';

// | **Suntikkan** | ![image1](assets/images/img_injek_bulanan.png) |

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PrimaryAppBar(
          title: 'Injeksi Bulanan',
        ),
        body: _body(context));
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Column(
        children: [
          MarkdownBody(
            data: injeksiBulananMd1,
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
      //             Html(
      //               data: injeksiBulananHtml,
      //               shrinkWrap: true,
      //             ),
      //             Html(
      //               shrinkWrap: true,
      //               extensions: [
      //                 const TableHtmlExtension(),
      //                 TagWrapExtension(
      //                     tagsToWrap: {"table"},
      //                     builder: (child) {
      //                       return SingleChildScrollView(
      //                         scrollDirection: Axis.horizontal,
      //                         child: child,
      //                       );
      //                     }),
      //                 // TagWrapExtension(
      //                 //   builder: (children) {
      //                 //     return Column(children: [children]);
      //                 //   },
      //                 //   tagsToWrap: {'ul'},
      //                 // ),
      //               ],
      //               style: {
      //                 "table": Style(
      //                   height: Height.auto(),
      //                   width: Width.auto(),
      //                 ),
      //                 "tr": Style(
      //                   height: Height.auto(),
      //                   width: Width.auto(),
      //                 ),
      //                 "th": Style(
      //                   padding: HtmlPaddings.all(6),
      //                   height: Height.auto(),
      //                   border: const Border(
      //                     left: BorderSide(color: Colors.black, width: 0.5),
      //                     bottom: BorderSide(color: Colors.black, width: 0.5),
      //                     top: BorderSide(color: Colors.black, width: 0.5),
      //                   ),
      //                 ),
      //                 "td": Style(
      //                   padding: HtmlPaddings.all(6),
      //                   height: Height.auto(),
      //                   border: const Border(
      //                     left: BorderSide(color: Colors.black, width: 0.5),
      //                     bottom: BorderSide(color: Colors.black, width: 0.5),
      //                     top: BorderSide(color: Colors.black, width: 0.5),
      //                     right: BorderSide(color: Colors.black, width: 0.5),
      //                   ),
      //                 ),
      //                 "col": Style(
      //                   height: Height.auto(),
      //                   width: Width.auto(),
      //                 ),
      //               },
      //               data: '''
      //   <table>
      //     <colgroup>
      //     <col width="50%" />
      //     <col span="2" width="25%" />
      //     </colgroup>
      //     <thead>
      //     <tr><th>One</th><th>Two</th><th>Three</th></tr>
      //     </thead>
      //     <tbody>
      //     <tr>
      //     <td rowspan='2'>Rowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan</td><td>Data</td><td>Data</td>
      //     </tr>
      //     <tr>
      //     <td colspan="2"><img alt='Google' src='https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png' /></td>
      //     </tr>
      //     </tbody>
      //     <tfoot>
      //     <tr><td> <ul> <li> 1</li></ul> </td><td>
      
      //     </td><td>fData</td></tr>
      //     </tfoot>
      //     </table>
      // ''',
      //             ),
        ],
      ),
    );
  }

  void _navigateToPhotoDetail(BuildContext context, String imageUrl) {
    context.router.push(PhotoDetailRoute(photoUrl: imageUrl));
  }
}
