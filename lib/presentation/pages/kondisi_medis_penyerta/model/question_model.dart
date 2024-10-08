class Question {
  final String type;
  final String question;
  final List<String> options;
  final List<Map<String, String>> criteria;
  String? selectedOption;
  bool isExpanded;

  Question(
      {required this.type,
      required this.question,
      required this.options,
      required this.criteria,
      this.selectedOption,
      this.isExpanded = false});

  static List<Question> getListQuestion() {
    return <Question>[
      Question(
          type: 'Penyakit Hati',
          question: 'Apakah pasien menderita penyakit hati ?',
          options: [
            'Tumor hati',
            'Hepatitis akut/flare',
            'Tidak'
          ],
          criteria: [
            {
              'type': 'Penyakit Hati',
              'option': 'Tumor hati',
              'hormonal': '4J',
              'pilProgestin': '3',
              'suntikProgestin': '3',
              'implan': '3',
              'akdrLevonorgestrel': '3',
              'akdrCopper': '1',
              'tubektomi': 'CB',
              'vasektomi': '',
            },
            {
              'type': 'Penyakit Hati',
              'option': 'Hepatitis akut/flare',
              'hormonal': '4KA',
              'pilProgestin': '1',
              'suntikProgestin': '1',
              'implan': '1',
              'akdrLevonorgestrel': '1',
              'akdrCopper': '1',
              'tubektomi': 'D',
              'vasektomi': '',
            },
            {
              'type': 'Penyakit Hati',
              'option': 'Tidak',
              'hormonal': '1',
              'pilProgestin': '1',
              'suntikProgestin': '1',
              'implan': '1',
              'akdrLevonorgestrel': '1',
              'akdrCopper': '1',
              'tubektomi': '',
              'vasektomi': '',
            },
          ]),
      Question(
          type: 'Kanker Payudara',
          question: 'Apakah pasien menderita penyakit kanker payudara ?',
          options: [
            'Ya',
            'Tidak'
          ],
          criteria: [
            {
              'type': 'Kanker Payudara',
              'option': 'Ya',
              'hormonal': '4',
              'pilProgestin': '4',
              'suntikProgestin': '4',
              'implan': '4',
              'akdrLevonorgestrel': '4',
              'akdrCopper': '1',
              'tubektomi': 'C',
              'vasektomi': '',
            },
            {
              'type': 'Kanker Payudara',
              'option': 'Tidak',
              'hormonal': '1',
              'pilProgestin': '1',
              'suntikProgestin': '1',
              'implan': '1',
              'akdrLevonorgestrel': '1',
              'akdrCopper': '1',
              'tubektomi': '',
              'vasektomi': '',
            },
          ]),
      Question(
        type: 'Tromboemboli Vena',
        question: 'Apakah pasien menderita penyakit tromboemboli vena ?',
        options: [
          'Memiliki riwayat',
          'Akut',
          'Operasi besar dengan imobilisasi lama',
          'Tidak'
        ],
        criteria: [
          {
            'type': 'Tromboemboli Vena',
            'option': 'Memiliki riwayat',
            'hormonal': '4',
            'pilProgestin': '2',
            'suntikProgestin': '2',
            'implan': '2',
            'akdrLevonorgestrel': '2',
            'akdrCopper': '1',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'Tromboemboli Vena',
            'option': 'Akut',
            'hormonal': '4',
            'pilProgestin': '3L',
            'suntikProgestin': '3L',
            'implan': '3L',
            'akdrLevonorgestrel': '3L',
            'akdrCopper': '1',
            'tubektomi': 'D',
            'vasektomi': '',
          },
          {
            'type': 'Tromboemboli Vena',
            'option': 'Operasi besar dengan imobilisasi lama',
            'hormonal': '4',
            'pilProgestin': '2',
            'suntikProgestin': '2',
            'implan': '2',
            'akdrLevonorgestrel': '2',
            'akdrCopper': '1',
            'tubektomi': 'D',
            'vasektomi': '',
          },
          {
            'type': 'Tromboemboli Vena',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
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
        criteria: [
          {
            'type': 'Kardiovaskular',
            'option': 'Stroke',
            'hormonal': '4',
            'pilProgestin': '2M',
            'suntikProgestin': '3',
            'implan': '2',
            'akdrLevonorgestrel': '2',
            'akdrCopper': '1',
            'tubektomi': 'C',
            'vasektomi': '',
          },
          {
            'type': 'Kardiovaskular',
            'option': 'Penyakit jantung iskemik',
            'hormonal': '4',
            'pilProgestin': '2M',
            'suntikProgestin': '3',
            'implan': '2M',
            'akdrLevonorgestrel': '2M',
            'akdrCopper': '1',
            'tubektomi': 'D',
            'vasektomi': '',
          },
          {
            'type': 'Kardiovaskular',
            'option': 'Faktor resiko multipel',
            'hormonal': '4',
            'pilProgestin': '2',
            'suntikProgestin': '3',
            'implan': '2',
            'akdrLevonorgestrel': '2',
            'akdrCopper': '1',
            'tubektomi': 'S',
            'vasektomi': '',
          },
          {
            'type': 'Kardiovaskular',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
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
          criteria: [
            {
              'type': 'Hipertensi',
              'option': '140-150/99-99 atau terkontrol adekuat',
              'hormonal': '3',
              'pilProgestin': '1',
              'suntikProgestin': '2',
              'implan': '1',
              'akdrLevonorgestrel': '1',
              'akdrCopper': '1',
              'tubektomi': 'C',
              'vasektomi': '',
            },
            {
              'type': 'Hipertensi',
              'option': 'Lebih dari atau sama dengan 160 / 100',
              'hormonal': '4',
              'pilProgestin': '2',
              'suntikProgestin': '3',
              'implan': '2',
              'akdrLevonorgestrel': '2',
              'akdrCopper': '1',
              'tubektomi': 'S',
              'vasektomi': '',
            },
            {
              'type': 'Hipertensi',
              'option': 'Tidak',
              'hormonal': '1',
              'pilProgestin': '1',
              'suntikProgestin': '1',
              'implan': '1',
              'akdrLevonorgestrel': '1',
              'akdrCopper': '1',
              'tubektomi': '',
              'vasektomi': '',
            },
          ]),
      Question(
        type: 'Obesitas',
        question: 'Apakah pasien menderita obesitas dengan BMI ≥ 30kg/m2 ?',
        options: [
          'Ya',
          'Tidak',
        ],
        criteria: [
          {
            'type': 'Obesitas',
            'option': 'Ya',
            'hormonal': '2',
            'pilProgestin': '1',
            'suntikProgestin': '1P',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': 'C',
            'vasektomi': '',
          },
          {
            'type': 'Obesitas',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
      ),
      Question(
        type: 'Diabetes',
        question: 'Apakah pasien menderita diabetes ?',
        options: [
          'Ya',
          'Tidak',
        ],
        criteria: [
          {
            'type': 'Diabetes',
            'option': 'Ya',
            'hormonal': '2Q',
            'pilProgestin': '2',
            'suntikProgestin': '2Q',
            'implan': '2',
            'akdrLevonorgestrel': '2',
            'akdrCopper': '1',
            'tubektomi': 'CC',
            'vasektomi': 'C',
          },
          {
            'type': 'Diabetes',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
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
        criteria: [
          {
            'type': 'Merokok',
            'option': 'Usia lebih dari 35 thn',
            'hormonal': '3R',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'Merokok',
            'option': 'Usia kurang dari 35 thn',
            'hormonal': '2',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'Merokok',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
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
        criteria: [
          {
            'type': 'Sakit Kepala',
            'option': 'Migren disertai aura',
            'hormonal': '4S',
            'pilProgestin': '2MS',
            'suntikProgestin': '2M',
            'implan': '2M',
            'akdrLevonorgestrel': '2M',
            'akdrCopper': '1',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'Sakit Kepala',
            'option': 'Bukan migren',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'Sakit Kepala',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
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
        criteria: [
          {
            'type': 'Interaksi Obat-obatan lain',
            'option': 'Beberapa antikonvulsan',
            'hormonal': '3U',
            'pilProgestin': '3V',
            'suntikProgestin': '2WV',
            'implan': '2V',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
          {
            'type': 'Interaksi Obat-obatan lain',
            'option': 'Rifampicin/Rifabutin',
            'hormonal': '3X',
            'pilProgestin': '3',
            'suntikProgestin': '2W',
            'implan': '2',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
          {
            'type': 'Interaksi Obat-obatan lain',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
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
        criteria: [
          {
            'type': 'HIV',
            'option': 'Terapi antiretro virus',
            'hormonal': '2Y',
            'pilProgestin': '2Y',
            'suntikProgestin': '2Y',
            'implan': '2Y',
            'akdrLevonorgestrel': '3ZA',
            'akdrCopper': '3ZA',
            'tubektomi': '',
            'vasektomi': '',
          },
          {
            'type': 'HIV',
            'option': 'WHO stadium 3 atau 4',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '3A',
            'akdrCopper': '3A',
            'tubektomi': 'S',
            'vasektomi': 'S',
          },
          {
            'type': 'HIV',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
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
        criteria: [
          {
            'type': 'ims',
            'option': 'Gonore Klamidia',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '4A',
            'akdrCopper': '4A',
            'tubektomi': 'D',
            'vasektomi': '',
          },
          {
            'type': 'ims',
            'option': 'Resiko meningkat untuk IMS',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '3B',
            'akdrCopper': '3B',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'ims',
            'option': 'IMS lain dan vaginitis',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '2',
            'akdrCopper': '2',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'ims',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
      ),
      Question(
        type: 'Penyakit radang panggul',
        question: 'Apakah pasien menderita penyakit radang panggul ?',
        options: [
          'Ya',
          'Tidak',
        ],
        criteria: [
          {
            'type': 'Penyakit radang panggul',
            'option': 'Ya',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '4A',
            'akdrCopper': '4A',
            'tubektomi': 'D',
            'vasektomi': '',
          },
          {
            'type': 'Penyakit radang panggul',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
      ),
      Question(
        type: 'Sepsis',
        question:
            'Apakah pasien menderita penyakit sepsis perperalis dan post abortus ?',
        options: [
          'Ya',
          'Tidak',
        ],
        criteria: [
          {
            'type': 'Sepsis',
            'option': 'Ya',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '4',
            'akdrCopper': '4',
            'tubektomi': 'D',
            'vasektomi': '',
          },
          {
            'type': 'Sepsis',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
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
        criteria: [
          {
            'type': 'Postpartum dan Menyusui',
            'option': 'Kurang dari 48jam',
            'hormonal': '4D',
            'pilProgestin': '2',
            'suntikProgestin': '3',
            'implan': '2',
            'akdrLevonorgestrel': '2E',
            'akdrCopper': '1',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'Postpartum dan Menyusui',
            'option': '48jam s/d kurang dari 4 minggu',
            'hormonal': '4DF',
            'pilProgestin': '2',
            'suntikProgestin': '3',
            'implan': '2',
            'akdrLevonorgestrel': '3',
            'akdrCopper': '3',
            'tubektomi': 'DA',
            'vasektomi': '',
          },
          {
            'type': 'Postpartum dan Menyusui',
            'option': '4 minggu s/d kurang dari 6 minggu',
            'hormonal': '4F',
            'pilProgestin': '2',
            'suntikProgestin': '3',
            'implan': '2',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': 'D',
            'vasektomi': '',
          },
          {
            'type': 'Postpartum dan Menyusui',
            'option': '6 minggu s/d 6 bulan',
            'hormonal': '3G',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'Postpartum dan Menyusui',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
      ),
      Question(
        type: 'Nullipara',
        question: 'Apakah pasien menderita penyakit nullipara ?',
        options: [
          'Ya',
          'Tidak',
        ],
        criteria: [
          {
            'type': 'Nullipara',
            'option': 'Ya',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '2',
            'akdrCopper': '2',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'Nullipara',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
      ),
      Question(
        type: 'Usia Remaja',
        question: 'Apakah pasien usia remaja menarche sampai usia 18 tahun ?',
        options: [
          'Ya',
          'Tidak',
        ],
        criteria: [
          {
            'type': 'Usia Remaja',
            'option': 'Ya',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '2',
            'implan': '1',
            'akdrLevonorgestrel': '2',
            'akdrCopper': '2',
            'tubektomi': 'C',
            'vasektomi': 'C',
          },
          {
            'type': 'Usia Remaja',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
      ),
      Question(
        type: 'Pendarahan Vagina',
        question:
            'Apakah pasien mengalami pendarahan per vagina yang tidak dapat dijelaskan ?',
        options: [
          'Ya',
          'Tidak',
        ],
        criteria: [
          {
            'type': 'Pendarahan Vagina',
            'option': 'Ya',
            'hormonal': '2',
            'pilProgestin': '2',
            'suntikProgestin': '3',
            'implan': '3',
            'akdrLevonorgestrel': '4A',
            'akdrCopper': '4A',
            'tubektomi': 'D',
            'vasektomi': '',
          },
          {
            'type': 'Pendarahan Vagina',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
      ),
      Question(
        type: 'Mioma Uteri',
        question: 'Apakah pasien menderita mioma uteri ?',
        options: [
          'Ya',
          'Tidak',
        ],
        criteria: [
          {
            'type': 'Mioma Uteri',
            'option': 'Ya',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1H',
            'akdrCopper': '1H',
            'tubektomi': 'C',
            'vasektomi': '',
          },
          {
            'type': 'Mioma Uteri',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
      ),
      Question(
        type: 'Neoplasia Servikal',
        question: 'Apakah pasien menderita neoplasia servikal ?',
        options: [
          'Ya',
          'Tidak',
        ],
        criteria: [
          {
            'type': 'Neoplasia Servikal',
            'option': 'Ya',
            'hormonal': '2',
            'pilProgestin': '1',
            'suntikProgestin': '2',
            'implan': '2',
            'akdrLevonorgestrel': '2',
            'akdrCopper': '1',
            'tubektomi': 'A',
            'vasektomi': '',
          },
          {
            'type': 'Neoplasia Servikal',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
      ),
      Question(
        type: 'Kanker Serviks',
        question: 'Apakah pasien menderita kanker serviks sebelum pengobatan ?',
        options: [
          'Ya',
          'Tidak',
        ],
        criteria: [
          {
            'type': 'Kanker Serviks',
            'option': 'Ya',
            'hormonal': '2',
            'pilProgestin': '1',
            'suntikProgestin': '2',
            'implan': '2',
            'akdrLevonorgestrel': '4A',
            'akdrCopper': '4A',
            'tubektomi': 'D',
            'vasektomi': '',
          },
          {
            'type': 'Kanker Serviks',
            'option': 'Tidak',
            'hormonal': '1',
            'pilProgestin': '1',
            'suntikProgestin': '1',
            'implan': '1',
            'akdrLevonorgestrel': '1',
            'akdrCopper': '1',
            'tubektomi': '',
            'vasektomi': '',
          },
        ],
      ),
    ];
  }
}
