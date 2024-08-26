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
        question: 'Apakah pasien menderita hipertensi ?',
        options: [
          '140-150/99-99 atau terkontrol adekuat',
          'Lebih dari atau sama dengan 160 / 100',
          'Tidak'
        ],
      ),
      Question(
        type: 'Obesitas',
        question: 'Apakah pasien menderita obesitas dengan BMI ≥ 30kg/m2 ?',
        options: [
          'Ya',
          'Tidak',
        ],
      ),
      Question(
        type: 'Diabetes',
        question: 'Apakah pasien menderita diabetes ?',
        options: [
          'Ya',
          'Tidak',
        ],
      ),
      Question(
        type: 'Merokok',
        question: 'Apakah pasien merokok ?',
        options: [
          'Usia lebih dari 35 thn',
          'Usia kurang dari 35 thn',
          'Tidak',
        ],
      ),
      Question(
        type: 'Sakit Kepala',
        question: 'Apakah pasien menderita sakit kepala ?',
        options: [
          'Migren disertai aura',
          'Bukan migren',
          'Tidak',
        ],
      ),
      Question(
        type: 'Interaksi Obat-obatan lain',
        question: 'Apakah pasien melakukan interaksi obat-obatan lain ?',
        options: [
          'Beberapa antikonvulsan',
          'Rifampicin/Rifabutin',
          'Tidak',
        ],
      ),
      Question(
        type: 'HIV',
        question: 'Apakah pasien menderita HIV ?',
        options: [
          'Terapi antiretro virus',
          'WHO stadium 3 atau 4',
          'Tidak',
        ],
      ),
      Question(
        type: 'Inveksi Menular Seksual (IMS)',
        question: 'Apakah pasien menderita penyakit menular seksual (IMS) ?',
        options: [
          'Gonore Klamidia',
          'Resiko meningkat untuk IMS',
          'IMS lain dan vaginitis',
          'Tidak',
        ],
      ),
      Question(
        type: 'Penyakit radang panggul',
        question: 'Apakah pasien menderita penyakit radang panggul ?',
        options: [
          'Ya',
          'Tidak',
        ],
      ),
      Question(
        type: 'Sepsis',
        question:
            'Apakah pasien menderita penyakit sepsis perperalis dan post abortus ?',
        options: ['Ya', 'Tidak'],
      ),
      Question(
        type: 'Postpartum dan Menyusui',
        question: 'Apakah pasien sedang dalam pospartum dan menyusui ?',
        options: [
          'Kurang dari 48jam',
          '48jam s/d kurang dari 4 minggu',
          '4 minggu s/d kurang dari 6 minggu',
          '6 minggu s/d 6 bulan',
          'Tidak',
        ],
      ),
      Question(
        type: 'Nullipara',
        question: 'Apakah pasien menderita penyakit nullipara ?',
        options: ['Ya', 'Tidak'],
      ),
      Question(
        type: 'Usia Remaja',
        question: 'Apakah pasien usia remaja menarche sampai usia 18 tahun ?',
        options: ['Ya', 'Tidak'],
      ),
      Question(
        type: 'Pendarahan Vagina',
        question:
            'Apakah pasien mengalami pendarahan per vagina yang tidak dapat dijelaskan ?',
        options: ['Ya', 'Tidak'],
      ),
      Question(
        type: 'Mioma Uteri',
        question: 'Apakah pasien menderita mioma uteri ?',
        options: ['Ya', 'Tidak'],
      ),
      Question(
        type: 'Neoplasia Servikal',
        question: 'Apakah pasien menderita neoplasia servikal ?',
        options: ['Ya', 'Tidak'],
      ),
      Question(
        type: 'Kanker Serviks',
        question: 'Apakah pasien menderita kanker serviks sebelum pengobatan ?',
        options: ['Ya', 'Tidak'],
      ),
    ];
  }
}
