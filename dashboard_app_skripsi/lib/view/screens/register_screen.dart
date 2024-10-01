import '/constant/services.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _namaDepanController = TextEditingController();
  final TextEditingController _tempatLahirController = TextEditingController();
  final TextEditingController _tanggalLahirController = TextEditingController();
  final TextEditingController _namaOrangTuaController = TextEditingController();

  void _handleSubmit() {
    // TODO: Implement actual registration logic
    print('Registration submitted');
    print('NIM: ${_nimController.text}');
    print('Nama Depan: ${_namaDepanController.text}');
    print('Tempat Lahir: ${_tempatLahirController.text}');
    print('Tanggal Lahir: ${_tanggalLahirController.text}');
    print('Nama Orang Tua: ${_namaOrangTuaController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ISILAH DATA DIBAWAH INI',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                'SESUAI DATA SAAT MENDAFTAR',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                'MAHASISWA BARU',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              CustomInput(
                hintText: 'NIM',
                controller: _nimController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 5),
              Text(
                'Contoh: 71200543',
                style: GoogleFonts.inter(
                    fontSize: 14, color: darkGray, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 15),
              CustomInput(
                hintText: 'Nama Depan Mahasiswa',
                controller: _namaDepanController,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 15),
              CustomInput(
                hintText: 'Tempat Lahir',
                controller: _tempatLahirController,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 15),
              CustomInput(
                hintText: 'Tanggal Lahir',
                controller: _tanggalLahirController,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 5),
              Text(
                'Tap untuk memilih tanggal',
                style: GoogleFonts.inter(
                    fontSize: 14, color: darkGray, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 15),
              CustomInput(
                hintText: 'Nama Depan Orang Tua',
                controller: _namaOrangTuaController,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 5),
              Text(
                'untuk mahasiswa S2/S3 masukkan nama kecil ibu',
                style: GoogleFonts.inter(
                    fontSize: 14, color: darkGray, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Proses',
                onPressed: _handleSubmit,
                isPrimary: true,
              ),
              const SizedBox(height: 16),
              CustomButton(
                text: 'Reset',
                onPressed: () {
                  setState(() {
                    _nimController.clear();
                    _namaDepanController.clear();
                    _tempatLahirController.clear();
                    _tanggalLahirController.clear();
                    _namaOrangTuaController.clear();
                  });
                },
                isPrimary: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nimController.dispose();
    _namaDepanController.dispose();
    _tempatLahirController.dispose();
    _tanggalLahirController.dispose();
    _namaOrangTuaController.dispose();
    super.dispose();
  }
}
