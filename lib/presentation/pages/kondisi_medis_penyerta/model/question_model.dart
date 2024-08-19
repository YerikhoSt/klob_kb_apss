class Question {
  final String type;
  final String question;
  final List<String> options;
  String? selectedOption;
  bool isExpanded;

  Question(
      {required this.type,
      required this.question,
      required this.options,
      this.selectedOption,
      this.isExpanded = false});

  static List<Question> getListQuestion() {
    return <Question>[
      Question(
        type: 'Penyakit Hati',
        question: 'Apakah pasien menderita penyakit hati ?',
        options: ['Tumor hati', 'Hepatitis akut/flare', 'Tidak'],
      ),
      Question(
        type: 'Kanker Payudara',
        question: 'Apakah pasien menderita penyakit kanker payudara ?',
        options: ['Ya', 'Tidak'],
      ),
      Question(
        type: 'Tromboemboli Vena',
        question: 'Apakah pasien menderita penyakit tromboemboli vena ?',
        options: [
          'Memiliki riwayat',
          'Akut',
          'Operasi besar dengan imobilisasi lama',
          'Tidak'
        ],
      ),
      Question(
        type: 'Kardiovaskular',
        question: 'Apakah pasien menderita penyakit kardiovaskular ?',
        options: [
          'Stroke',
          'Penyakit jantung iskemik',
          'Faktor resiko multipel',
          'Tidak'
        ],
      ),
      Question(
        type: 'Hipertensi',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Obesitas',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Diabetes',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Merokok',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Sakit Kepala',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Interaksi Obat-obatan lain',
        question: '',
        options: [''],
      ),
      Question(
        type: 'HIV',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Inveksi Menular Seksual (IMS)',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Penyakit radang panggul',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Sepsis',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Postpartum dan Menyusui',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Nullipara',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Usia Remaja',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Pendarahan Vagina',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Mioma Uteri',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Neoplasia Servikal',
        question: '',
        options: [''],
      ),
      Question(
        type: 'Kanker Serviks',
        question: '',
        options: [''],
      ),
    ];
  }
}
