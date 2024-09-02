class PenapisanKehamilanQuestionModel {
  final String question;
  final List<String> options;
  String? selectedOption;

  PenapisanKehamilanQuestionModel({
    required this.question,
    required this.options,
    this.selectedOption,
  });

  static List<PenapisanKehamilanQuestionModel> getListQuestion() {
    return [
      PenapisanKehamilanQuestionModel(
        question:
            '1. Apakah anda mempunyai bayi yang berumur kurang dari 6 bulan dan apakah anda menyusui secara ekslusif atau hampir ekslusif dan belum mendapatkan haid ?',
        options: ['Iya', 'Tidak'],
      ),
      PenapisanKehamilanQuestionModel(
        question:
            '2. Apakah anda pantang bersenggama sejak haid terakhir atau bersalin ?',
        options: ['Iya', 'Tidak'],
      ),
      PenapisanKehamilanQuestionModel(
        question: '3. Apakah anda baru melahirkan bayi kurang dari 4 minggu ?',
        options: ['Iya', 'Tidak'],
      ),
      PenapisanKehamilanQuestionModel(
        question:
            '4. Apakah haid terkahir dimulai 7 hari terakhir (atau 12 hari terakhir bila klien ingin menggunakan AKDR) ?',
        options: ['Iya', 'Tidak'],
      ),
      PenapisanKehamilanQuestionModel(
        question:
            '5. Apakah anda mengalami keguguran dalam 7 hari terakhir (atau 12 hari terakhir bila klien ingin menggunakan AKDR) ?',
        options: ['Iya', 'Tidak'],
      ),
      PenapisanKehamilanQuestionModel(
        question:
            '6. Apakah anda menggunakan metode kontrasepsi secara tepat dan konsisten ? ',
        options: ['Iya', 'Tidak'],
      ),
    ];
  }
}
