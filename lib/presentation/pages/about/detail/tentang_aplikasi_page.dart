import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:klob_kb_apps/util/constants/sizes.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';

@RoutePage()
class TentangAplikasiPage extends StatelessWidget {
  const TentangAplikasiPage({super.key});

  static const String tentangApplikasiMd = '''
Diterbitkan oleh World Health Organization tahun 2015 Judul Asli Medical Eligibility Criteria Wheel for Contraceptive Use 2015\.   
©World Health Organization

DIAGRAM LINGKARAN KRITERIA KELAYAKAN MEDIS DALAM PENGGUNAAN KONTRASEPSI

Alih Bahasa	: Tim Adaptasi Indonesia  
Penyusun	: Tim Adaptasi Indonesia  
Editor		: Tim Adaptasi Indonesia

Edisi Bahasa Indonesia ini diterbitkan oleh World Health Organization Indonesia bekerja sama dengan Kementrian Kesehatan, BKKBN, IDI, POGI, PKMI, PKNI, IBI, dan PPNI

Hak cipta dilindungi Undang-Undang

Dilarang Mengutip, Memperbanyak, dan Menerjemahkan sebagian atau seluruh isi Diagram Lingkaran ini tanpa izin tertulis dari penerbit.

Cetakan tahun 2018

Katalog dalam terbitan

World Health Organization.  
World Health Organization. Country Officer for Indonesia

Diagram lingkaran kriteria kelayakan medis dalam penggunaan kontrasepsi WHO; alih bahasa, Tim Adaptasi Indonesia \- Jakarta: Who Indonesia 2016\.

1. Contraception - methods.  
2. Family planning services - methods.  
3. Eligibility determination -standards.  
4. Guidelines. I. World Health Organization, II. Title: Medical eligibility criteria wheel for contraceptive use.  
5. Metode Kontrasepsi  
6. Pelayanan Keluarga Berencana  
7. Kriteria Kelayakan Meds dalam Penggunaan Kontrasepsi


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
            data: tentangApplikasiMd,
            styleSheet: context.markdownStyleSheet,
          ),
        ],
      ),
    );
  }
}
