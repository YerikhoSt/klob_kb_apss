class ProsedurSebelumPenggunaanModel {
  final String prosedur;
  final String? kontrasepsiKombinasi;
  final String? suntikanKombinasi;
  final String? pilPogestin;
  final String? suntikanPogestin;
  final String? implan;
  final String? iud;
  final String? koyoKombinasi;
  final String? cincinVagina;
  final String? spermisida;
  final String? tubektomi;
  final String? vasektomi;

  ProsedurSebelumPenggunaanModel({
    required this.prosedur,
    required this.kontrasepsiKombinasi,
    required this.suntikanKombinasi,
    required this.pilPogestin,
    required this.suntikanPogestin,
    required this.implan,
    required this.iud,
    required this.koyoKombinasi,
    required this.cincinVagina,
    required this.spermisida,
    required this.tubektomi,
    required this.vasektomi,
  });

  static List<ProsedurSebelumPenggunaanModel>
      getProsedurSebelumPenggunaanData() {
    return [
      ProsedurSebelumPenggunaanModel(
        prosedur: 'Pemeriksaan Payudara',
        kontrasepsiKombinasi: 'C',
        suntikanKombinasi: 'C',
        pilPogestin: 'C',
        suntikanPogestin: 'C',
        implan: 'C',
        iud: 'C',
        koyoKombinasi: 'C',
        cincinVagina: 'C',
        spermisida: 'C',
        tubektomi: 'C',
        vasektomi: '',
      ),
      ProsedurSebelumPenggunaanModel(
        prosedur: 'Pemeriksaan Dalam',
        kontrasepsiKombinasi: 'C',
        suntikanKombinasi: 'C',
        pilPogestin: 'C',
        suntikanPogestin: 'C',
        implan: 'C',
        iud: 'A',
        koyoKombinasi: 'C',
        cincinVagina: 'A',
        spermisida: 'C',
        tubektomi: 'A',
        vasektomi: 'A',
      ),
      ProsedurSebelumPenggunaanModel(
        prosedur: 'Pemeriksaan Penapisan Kanker Leher Rahim',
        kontrasepsiKombinasi: 'C',
        suntikanKombinasi: 'C',
        pilPogestin: 'C',
        suntikanPogestin: 'C',
        implan: 'C',
        iud: 'C',
        koyoKombinasi: 'C',
        cincinVagina: 'C',
        spermisida: 'C',
        tubektomi: 'C',
        vasektomi: '',
      ),
      ProsedurSebelumPenggunaanModel(
        prosedur: 'Pemeriksaan Laboratorium Rutin',
        kontrasepsiKombinasi: 'C',
        suntikanKombinasi: 'C',
        pilPogestin: 'C',
        suntikanPogestin: 'C',
        implan: 'C',
        iud: 'C',
        koyoKombinasi: 'C',
        cincinVagina: 'C',
        spermisida: 'C',
        tubektomi: 'C',
        vasektomi: '',
      ),
      ProsedurSebelumPenggunaanModel(
        prosedur: 'Pemeriksaan Hemoglobin',
        kontrasepsiKombinasi: 'C',
        suntikanKombinasi: 'C',
        pilPogestin: 'C',
        suntikanPogestin: 'C',
        implan: 'C',
        iud: 'C',
        koyoKombinasi: 'C',
        cincinVagina: 'C',
        spermisida: 'C',
        tubektomi: 'B',
        vasektomi: 'C',
      ),
      ProsedurSebelumPenggunaanModel(
        prosedur: 'Seleksi IRS/IMS: Anamesis dan Pemeriksaan Fisik',
        kontrasepsiKombinasi: 'C',
        suntikanKombinasi: 'C',
        pilPogestin: 'C',
        suntikanPogestin: 'C',
        implan: 'C',
        iud: 'A',
        koyoKombinasi: 'C',
        cincinVagina: 'C',
        spermisida: 'C',
        tubektomi: 'C',
        vasektomi: 'C',
      ),
      ProsedurSebelumPenggunaanModel(
        prosedur: 'Riwayat Tromboemboli Vena',
        kontrasepsiKombinasi: 'C',
        suntikanKombinasi: 'C',
        pilPogestin: 'C',
        suntikanPogestin: 'C',
        implan: 'C',
        iud: 'B',
        koyoKombinasi: 'C',
        cincinVagina: 'C',
        spermisida: 'C',
        tubektomi: 'C',
        vasektomi: 'C',
      ),
      ProsedurSebelumPenggunaanModel(
        prosedur: 'Penapisan Tekanan Darah',
        kontrasepsiKombinasi: '',
        suntikanKombinasi: '',
        pilPogestin: '',
        suntikanPogestin: '',
        implan: '',
        iud: 'C',
        koyoKombinasi: 'C',
        cincinVagina: 'C',
        spermisida: 'C',
        tubektomi: 'A',
        vasektomi: 'C',
      ),
    ];
  }
}
