import '/constant/services.dart';
import '/view/screens/home_screen.dart'; // Import the HomeScreen

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
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          // Add back button
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
      ),
      body: FutureBuilder<BiodataCombined>(
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

          final biodataMahasiswa = snapshot.data!.biodataMahasiswa;
          final biodataOrangTua = snapshot.data!.biodataOrangTua;
          final biodataSekolah = snapshot.data!.biodataSekolah;

          final mahasiswaInfoList = [
            InfoItem('Nama', biodataMahasiswa.nama),
            InfoItem('Tempat Lahir', biodataMahasiswa.tempatLahir),
            InfoItem('Tanggal Lahir', biodataMahasiswa.tanggalLahir),
            InfoItem('Agama', biodataMahasiswa.agama),
            InfoItem('Jenis Kelamin', biodataMahasiswa.jenisKelamin),
            InfoItem('Golongan Darah', biodataMahasiswa.golonganDarah),
            InfoItem('Warga Negara', biodataMahasiswa.kewarganegaraan),
            InfoItem('Alamat', biodataMahasiswa.alamat),
            InfoItem('Kelurahan', biodataMahasiswa.kelurahan),
            InfoItem('Kecamatan', biodataMahasiswa.kecamatan),
            InfoItem('Kabupaten', biodataMahasiswa.kabupaten),
            InfoItem('Provinsi', biodataMahasiswa.provinsi),
            InfoItem('Kode Pos', biodataMahasiswa.kodePos),
            InfoItem('No. HP', biodataMahasiswa.noHp),
            InfoItem('Email', biodataMahasiswa.email),
            InfoItem('Email Student', biodataMahasiswa.emailStudent),
            InfoItem('NIK', biodataMahasiswa.nik),
            InfoItem('No. KK', biodataMahasiswa.noKartuKeluarga),
            InfoItem('NISN', biodataMahasiswa.nisn),
            InfoItem('No. BPJS', biodataMahasiswa.noBPJS),
          ];

          final orangTuaInfoList = [
            InfoItem('Nama Orang Tua', biodataOrangTua.namaOrangTua),
            InfoItem('Alamat', biodataOrangTua.alamatOrangTua),
            InfoItem('Kabupaten', biodataOrangTua.kabupatenOrangTua),
            InfoItem('Provinsi', biodataOrangTua.provinsiOrangTua),
            InfoItem('No. HP', biodataOrangTua.noHpOrangTua),
            InfoItem('Pekerjaan', biodataOrangTua.pekerjaanOrangTua),
          ];

          final sekolahInfoList = [
            InfoItem('Nama Sekolah', biodataSekolah.namaSekolah),
            InfoItem('Alamat Sekolah', biodataSekolah.alamatSekolah),
            InfoItem('Kabupaten Sekolah', biodataSekolah.kabupatenSekolah),
            InfoItem('Provinsi Sekolah', biodataSekolah.provinsiSekolah),
            InfoItem('Jurusan', biodataSekolah.jurusan),
          ];

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    'Mahasiswa',
                    style: heading2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: InfoList(infoList: mahasiswaInfoList),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    'Orang Tua',
                    style: heading2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: InfoList(infoList: orangTuaInfoList),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    'Sekolah',
                    style: heading2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: InfoList(infoList: sekolahInfoList),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class InfoList extends StatelessWidget {
  final List<InfoItem> infoList;

  const InfoList({super.key, required this.infoList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: infoList.length,
      itemBuilder: (context, index) {
        return InfoRow(
          label: infoList[index].label,
          value: infoList[index].value ?? 'N/A',
        );
      },
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
                    style: heading4,
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  ':',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              value,
              style: heading4,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
