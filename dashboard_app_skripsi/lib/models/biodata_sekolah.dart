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
