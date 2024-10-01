class BiodataMahasiswa {
  final String? nama;
  final String? tempatLahir;
  final String? tanggalLahir;
  final String? agama;
  final String? jenisKelamin;
  final String? golonganDarah;
  final String? kewarganegaraan;
  final String? alamat;
  final String? kelurahan;
  final String? kecamatan;
  final String? kabupaten;
  final String? provinsi;
  final String? kodePos;
  final String? noHp;
  final String? email;
  final String? emailStudent;
  final String? nik;
  final String? noKartuKeluarga;
  final String? nisn;
  final String? noBPJS;

  BiodataMahasiswa({
    this.nama,
    this.tempatLahir,
    this.tanggalLahir,
    this.agama,
    this.jenisKelamin,
    this.golonganDarah,
    this.kewarganegaraan,
    this.alamat,
    this.kelurahan,
    this.kecamatan,
    this.kabupaten,
    this.provinsi,
    this.kodePos,
    this.noHp,
    this.email,
    this.emailStudent,
    this.nik,
    this.noKartuKeluarga,
    this.nisn,
    this.noBPJS,
  });

  factory BiodataMahasiswa.fromJson(Map<String, dynamic> json) {
    return BiodataMahasiswa(
      nama: json['nama'],
      tempatLahir: json['tempatLahir'],
      tanggalLahir: json['tanggalLahir'],
      agama: json['agama'],
      jenisKelamin: json['jenisKelamin'],
      golonganDarah: json['golonganDarah'],
      kewarganegaraan: json['kewarganegaraan'],
      alamat: json['alamat'],
      kelurahan: json['kelurahan'],
      kecamatan: json['kecamatan'],
      kabupaten: json['kabupaten'],
      provinsi: json['provinsi'],
      kodePos: json['kodePos'],
      noHp: json['noHp'],
      email: json['email'],
      emailStudent: json['emailStudent'],
      nik: json['nik'],
      noKartuKeluarga: json['noKartuKeluarga'],
      nisn: json['nisn'],
      noBPJS: json['noBPJS'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nama': nama,
      'tempatLahir': tempatLahir,
      'tanggalLahir': tanggalLahir,
      'agama': agama,
      'jenisKelamin': jenisKelamin,
      'golonganDarah': golonganDarah,
      'kewarganegaraan': kewarganegaraan,
      'alamat': alamat,
      'kelurahan': kelurahan,
      'kecamatan': kecamatan,
      'kabupaten': kabupaten,
      'provinsi': provinsi,
      'kodePos': kodePos,
      'noHp': noHp,
      'email': email,
      'emailStudent': emailStudent,
      'nik': nik,
      'noKartuKeluarga': noKartuKeluarga,
      'nisn': nisn,
      'noBPJS': noBPJS,
    };
  }
}

class BiodataOrangTua {
  final String? namaOrangTua;
  final String? alamatOrangTua;
  final String? kabupatenOrangTua;
  final String? provinsiOrangTua;
  final String? kodeposOrangTua;
  final String? noHpOrangTua;
  final String? pekerjaanOrangTua;

  BiodataOrangTua({
    this.namaOrangTua,
    this.alamatOrangTua,
    this.kabupatenOrangTua,
    this.provinsiOrangTua,
    this.kodeposOrangTua,
    this.noHpOrangTua,
    this.pekerjaanOrangTua,
  });

  factory BiodataOrangTua.fromJson(Map<String, dynamic> json) {
    return BiodataOrangTua(
      namaOrangTua: json['namaOrangTua'],
      alamatOrangTua: json['alamatOrangTua'],
      kabupatenOrangTua: json['kabupatenOrangTua'],
      provinsiOrangTua: json['provinsiOrangTua'],
      kodeposOrangTua: json['kodeposOrangTua'],
      noHpOrangTua: json['noHpOrangTua'],
      pekerjaanOrangTua: json['pekerjaanOrangTua'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'namaOrangTua': namaOrangTua,
      'alamatOrangTua': alamatOrangTua,
      'kabupatenOrangTua': kabupatenOrangTua,
      'provinsiOrangTua': provinsiOrangTua,
      'kodeposOrangTua': kodeposOrangTua,
      'noHpOrangTua': noHpOrangTua,
      'pekerjaanOrangTua': pekerjaanOrangTua,
    };
  }
}

class BiodataSekolah {
  final String? namaSekolah;
  final String? alamatSekolah;
  final String? kabupatenSekolah;
  final String? provinsiSekolah;
  final String? jurusan;

  BiodataSekolah(
      {this.namaSekolah,
      this.alamatSekolah,
      this.kabupatenSekolah,
      this.provinsiSekolah,
      this.jurusan});

  factory BiodataSekolah.fromJson(Map<String, dynamic> json) {
    return BiodataSekolah(
      namaSekolah: json['namaSekolah'],
      alamatSekolah: json['alamatSekolah'],
      kabupatenSekolah: json['kabupatenSekolah'],
      provinsiSekolah: json['provinsiSekolah'],
      jurusan: json['jurusan'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'namaSekolah': namaSekolah,
      'alamatSekolah': alamatSekolah,
      'kabupatenSekolah': kabupatenSekolah,
      'provinsiSekolah': provinsiSekolah,
      'jurusan': jurusan,
    };
  }
}
