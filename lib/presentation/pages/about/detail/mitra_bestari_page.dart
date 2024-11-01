import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class MitraBestariPage extends StatelessWidget {
  const MitraBestariPage({super.key});

  static const String mitraBestariMd = '''
**Mitra Bestari:**

Prof. dr. Ilham Oetama Marsis, SpOg;   
Prof. Dr. dr. Biran Affandi, SpOG (K) (POGI);   
Prof. dr. Ova Emilia, M. Med. Ed, Ph.D, SpOG (K);   
Prof. Dr. dr. Siswanto Agus Wilopo, S.U, M.Sc, Sc.D;   
dr. Julianto Witjaksono, AS, MGO, SpOG (K);   
dr Djajadilaga, SpOG (K);  
 dr. Ilyas Angsar, SpOG (K) (POGI);  
Dr. dr. JM Seno Adjie, SpOG (K)(HOGSi);  
dr. M. Nurhadi Rahman, SpOG (K);   
dr. Ari Kusuma, SpOG (K);   
dr. Rustini Floranita (WHO Indonesia);   
dr Eni Gustina, MPH (Kementrian Kesehatan);   
drg. Wara Pertiwi O, MA (Kementrian Kesehatan);   
dr. Wisnu Trianggono, MPH (Kementrian Kesehatan);   
dr. Suyono Santoso, SpOG (K);   
dr. M. Dwi Priangga, SpOG;   
dr. Cepi teguh Pramayadi, SpOG;   
dr. Riyan Hari Kurniawan, SpOG;   
Dr. dr. Nur Rasyid, SpU (K) (PKMI);   
dr. Sarsanto Wibisono Sarwono, SpOG (PKBI);   
dr. Surya Firdawati (BKKBN);   
dr Yuliana Slamet (BKKBN);   
Dr Emi Nurjasmi, M. Kes (IBI);   
Harif Fadhilah, SKp, SH (PPNI);  
Direktorat Kesehatan Keluarga, Kementrian Kesehatan RI;   
Deputi Bidang Keluarga Berencana dan Kesehatan Reproduksi, BKKBN.

''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Mitra Bestari',
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
            data: mitraBestariMd,
            styleSheet: context.markdownStyleSheet,
          ),
        ],
      ),
    );
  }
}
