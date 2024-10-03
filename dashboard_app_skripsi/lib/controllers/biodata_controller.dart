import '/constant/services.dart';

class BiodataCombined {
  final BiodataMahasiswa biodataMahasiswa;
  final BiodataOrangTua biodataOrangTua;
  final BiodataSekolah biodataSekolah;

  BiodataCombined({
    required this.biodataMahasiswa,
    required this.biodataOrangTua,
    required this.biodataSekolah,
  });
}

class BiodataController {
  Future<BiodataCombined> fetchBiodata() async {
    // Simulate a network request
    await Future.delayed(const Duration(seconds: 1));

    // Return mock data for BiodataMahasiswa, BiodataOrangTua, and BiodataSekolah
    final biodataMahasiswa = BiodataMahasiswa.fromJson({
      'nama': 'John Doe',
      'tempatLahir': 'Jakarta',
      'tanggalLahir': '1995-05-15',
      'agama': 'Kristen',
      'jenisKelamin': 'Laki-laki',
      'golonganDarah': 'O',
      'kewarganegaraan': 'WNI',
      'alamat': 'Jl. Contoh No. 123, Kota Contoh',
      'kelurahan': 'Kelurahan Contoh',
      'kecamatan': 'Kecamatan Contoh',
      'kabupaten': 'Kabupaten Contoh',
      'provinsi': 'Provinsi Contoh',
      'kodePos': '12345',
      'noHp': '081234567890',
      'email': 'john.doe@example.com',
      'emailStudent': 'john.doe@student.example.com',
      'nik': '1234567890123456',
      'noKartuKeluarga': '1234567890123456',
      'nisn': '1234567890123456',
      'noBPJS': '1234567890123456',
    });

    final biodataOrangTua = BiodataOrangTua.fromJson({
      'namaOrangTua': 'Jane Doe',
      'alamatOrangTua': 'Jl. Contoh No. 456, Kota Contoh',
      'kabupatenOrangTua': 'Kabupaten Contoh',
      'provinsiOrangTua': 'Provinsi Contoh',
      'kodeposOrangTua': '12345',
      'noHpOrangTua': '081234567891',
      'pekerjaanOrangTua': 'Pegawai',
    });

    final biodataSekolah = BiodataSekolah.fromJson({
      'namaSekolah': 'Sekolah Contoh',
      'alamatSekolah': 'Jl. Sekolah No. 789, Kota Contoh',
      'kabupatenSekolah': 'Kabupaten Contoh',
      'provinsiSekolah': 'Provinsi Contoh',
      'jurusan': 'Teknik Informatika',
    });

    return BiodataCombined(
      biodataMahasiswa: biodataMahasiswa,
      biodataOrangTua: biodataOrangTua,
      biodataSekolah: biodataSekolah,
    );
  }
}
