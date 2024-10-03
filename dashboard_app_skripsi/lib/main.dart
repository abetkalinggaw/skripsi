import '/constant/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SSAT Mobile App',

      // home: const HomeScreen(),
      // home: BiodataScreen(),
      // home: LoginScreen(),
      home: StartScreen(),
    );
  }
}
