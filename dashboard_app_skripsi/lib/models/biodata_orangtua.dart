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
