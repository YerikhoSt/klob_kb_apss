class EfektivitasMetodeModel {
  final String metode;
  final String? dipakaiKonsisten;
  final String? dipakaiBiasa;

  EfektivitasMetodeModel({
    required this.metode,
    required this.dipakaiKonsisten,
    required this.dipakaiBiasa,
  });

  static List<EfektivitasMetodeModel> getEfektivitasMetodeData() {
    return [
      EfektivitasMetodeModel(
          metode: 'Implan', dipakaiKonsisten: '0.05', dipakaiBiasa: '0.05'),
      EfektivitasMetodeModel(
          metode: 'Kontap pria (vasektomi)',
          dipakaiKonsisten: '0.01',
          dipakaiBiasa: '0.15'),
      EfektivitasMetodeModel(
          metode: 'Kontrasepsi oral Levonorgestol',
          dipakaiKonsisten: '0.2',
          dipakaiBiasa: '0.2'),
      EfektivitasMetodeModel(
          metode: 'Kontap perempuan (tubektomi)',
          dipakaiKonsisten: '0.5',
          dipakaiBiasa: '0.5'),
      EfektivitasMetodeModel(
          metode: 'AKDR Tcu 380A',
          dipakaiKonsisten: '0.6',
          dipakaiBiasa: '0.8'),
      EfektivitasMetodeModel(
          metode: 'Metode Laktasi amenorea (6 bulan)',
          dipakaiKonsisten: '0.9',
          dipakaiBiasa: '2'),
      EfektivitasMetodeModel(
          metode: 'Suntikan kombinasi sebulan sekali',
          dipakaiKonsisten: '0.05',
          dipakaiBiasa: '2'),
      EfektivitasMetodeModel(
          metode: 'Suntikan progrestin',
          dipakaiKonsisten: '0.3',
          dipakaiBiasa: '8'),
      EfektivitasMetodeModel(
          metode: 'Pil kombinasi', dipakaiKonsisten: '0.3', dipakaiBiasa: '8'),
      EfektivitasMetodeModel(
          metode: 'Koyo kombinasi', dipakaiKonsisten: '0.3', dipakaiBiasa: '8'),
      EfektivitasMetodeModel(
          metode: 'Cincin vagina kombinasi',
          dipakaiKonsisten: '0.3',
          dipakaiBiasa: '8'),
      EfektivitasMetodeModel(
          metode: 'Kondom pria', dipakaiKonsisten: '2', dipakaiBiasa: '15'),
      EfektivitasMetodeModel(
          metode: 'Metode mukosa serviks/Ovulasi',
          dipakaiKonsisten: '3',
          dipakaiBiasa: ''),
      EfektivitasMetodeModel(
          metode: 'Metode Simptotermal',
          dipakaiKonsisten: '4',
          dipakaiBiasa: ''),
      EfektivitasMetodeModel(
          metode: 'Metode Kalender', dipakaiKonsisten: '5', dipakaiBiasa: ''),
      EfektivitasMetodeModel(
          metode: 'Diafragma dengan spermisida',
          dipakaiKonsisten: '6',
          dipakaiBiasa: '16'),
      EfektivitasMetodeModel(
          metode: 'Kondom wanita', dipakaiKonsisten: '5', dipakaiBiasa: '21'),
      EfektivitasMetodeModel(
          metode: 'Metode kontrasepsi alami yang lain',
          dipakaiKonsisten: '',
          dipakaiBiasa: '25'),
      EfektivitasMetodeModel(
          metode: 'Senggama terputus',
          dipakaiKonsisten: '4',
          dipakaiBiasa: '27'),
      EfektivitasMetodeModel(
          metode: 'Spremisida', dipakaiKonsisten: '18', dipakaiBiasa: '29'),
      EfektivitasMetodeModel(
        metode: 'Tudung Serviks',
        dipakaiKonsisten: '26:9',
        dipakaiBiasa: '32:16',
      ),
      EfektivitasMetodeModel(
          metode: 'Tidak menggunakan kontrasepsi',
          dipakaiKonsisten: '86',
          dipakaiBiasa: '85'),
    ];
  }
}
