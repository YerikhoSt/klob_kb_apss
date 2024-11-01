import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class UcapanTerimakasihPage extends StatelessWidget {
  const UcapanTerimakasihPage({super.key});

  static const String ucapanTerimakasihMd = '''
**Ucapan Terima Kasih**

Diagram lingkaran ini merupakan modifikasi dari hasil publikasi resmi WHO yaitu Medical Eligibility Criteria for Contraceptive Use, 2015 (Department of Reproductive Health and Research, 2015).

Versi bahasa Inggris dapat diunduh secara gratis pada situs WHO dengan topic Family Planning.

(http://www.who.int/reproductivehealth/publications/family\_planning/mec-wheel-5th/en). Dan bersumber pada buku Family Planning: a global handbook for providers 2011 Update (John Hopkins Bloomberg School of Public Health/Center for Communication Programs and World Health Organization, 2011).

Modifikasi diagram lingkaran yang telah diterjemahkan dalam Bahasa Indonesia ini telah diuji coba oleh mahasiswa kedokteran, perawat, bidan dan reiden d lingkungan Fakultas Kedokteran Universitas Indonesia dan RSUPN dr. Cipto Mangunkusumo Jakarta. Penghargaan yang sebesar-besarnya kami berikan kepada Ikatan Dokter Indonesia (IDI), Badan Koordinasi  Keluarga Berencana Nasional (BKKBN), Perkumpulan Obstetri dan Ginekologi Indonesia (POGI), Ikatan Bidan Indonesia (IBI), Perkumpulan Kontrasepsi Mantap Indonesia (PKMI), Perkumpulan Keluarga Berencana Indonesia (PKBI) dan PErsatuan Perawat Nasional Indonesia (PPNI) atas dukungan dan kontribusi tak ternilai selama proses penyusunan dan pencetakan. Pembuatan diagram lingkaran ini ditujukan sepenuhnya untuk kemajuan pendidikan kedokteran dan program keluarga berencana di Indonesia.

Tata letak dan desain edisi pertama versi Bahasa Inggris: Ms. Cath Hamill dan Ms. Janet Petitpierre.

Dimodifikasi oleh: dr. Yudianto Budi Saroyo, SpOG (K), dr. Herbert Situmorang, SpOG, dr. Rustini Floranita (WHO Indonesia), dr. Nuryasni, dr. Farian M.Si, dr. Fajar Nursuhud, dr. Novita Adelina, Sugiarto dan Misbah Budi Santoso, SKom, Hary Purwanto SKom, Ahmad NurIhsan Purwanto, ST, Martina Amirull Hady SKom, Erlangga, Baton Safari Kukuh.

''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Tentang Aplikasi',
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Column(
        children: [
          MarkdownBody(
            data: ucapanTerimakasihMd,
            styleSheet: context.markdownStyleSheet,
          ),
        ],
      ),
    );
  }
}
