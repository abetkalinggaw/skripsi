import '/constant/services.dart';

class BiodataScreen extends StatelessWidget {
  const BiodataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BiodataController biodataController = BiodataController();

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: const Text('Detail Mahasiswa'),
        backgroundColor: white,
      ),
      body: FutureBuilder<BiodataMahasiswa>(
        future: biodataController.fetchBiodata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Error: ${snapshot.error}'),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Go Back'),
                  ),
                ],
              ),
            );
          } else if (!snapshot.hasData) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('No data available'),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Go Back'),
                  ),
                ],
              ),
            );
          }

          final biodata = snapshot.data!;
          final infoList = [
            InfoItem('Nama', biodata.nama),
            InfoItem('Tempat Lahir', biodata.tempatLahir),
            InfoItem('Tanggal Lahir', biodata.tanggalLahir),
            InfoItem('Agama', biodata.agama),
            InfoItem('Jenis Kelamin', biodata.jenisKelamin),
            InfoItem('Golongan Darah', biodata.golonganDarah),
            InfoItem('Kewarganegaraan', biodata.kewarganegaraan),
            InfoItem('Alamat', biodata.alamat),
            InfoItem('Kelurahan', biodata.kelurahan),
            InfoItem('Kecamatan', biodata.kecamatan),
            InfoItem('Kabupaten', biodata.kabupaten),
            InfoItem('Provinsi', biodata.provinsi),
            InfoItem('Kode Pos', biodata.kodePos),
            InfoItem('No. HP', biodata.noHp),
            InfoItem('Email', biodata.email),
            InfoItem('Email Student', biodata.emailStudent),
            InfoItem('NIK', biodata.nik),
            InfoItem('No. Kartu Keluarga', biodata.noKartuKeluarga),
            InfoItem('NISN', biodata.nisn),
            InfoItem('No. BPJS', biodata.noBPJS),
          ];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  'Mahasiswa',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: infoList.length,
                  itemBuilder: (context, index) {
                    return InfoRow(
                      label: infoList[index].label,
                      value: infoList[index].value ?? 'N/A',
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class InfoItem {
  final String label;
  final String? value;

  InfoItem(this.label, this.value);
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    label,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                const Text(
                  ':',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
