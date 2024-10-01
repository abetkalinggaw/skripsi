import '/constant/services.dart';

class BiodataController {
  Future<BiodataMahasiswa> fetchBiodata() async {
    // Simulate a network request
    await Future.delayed(const Duration(seconds: 1));

    // Return a mock Biodata object
    return BiodataMahasiswa(
      nama: 'John Doe',
      tempatLahir: 'Jakarta',
      tanggalLahir: '1995-05-15',
      agama: 'Kristen',
      jenisKelamin: 'Laki-laki',
      alamat: 'Jl. Contoh No. 123, Kota Contoh',
      kelurahan: 'Kelurahan Contoh',
      kecamatan: 'Kecamatan Contoh',
      kabupaten: 'Kabupaten Contoh',
      provinsi: 'Provinsi Contoh',
      kodePos: '12345',
      noHp: '081234567890',
      email: 'john.doe@example.com',
      emailStudent: 'john.doe@student.example.com',
      nik: '1234567890123456',
      noKartuKeluarga: '1234567890123456',
      nisn: '1234567890123456',
      noBPJS: '1234567890123456',
    );
  }
}
