import '/constant/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/ukdw-warna.png',
                  height: 100,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 60),
                CustomInput(
                  hintText: 'Username',
                  controller: _usernameController,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16),
                CustomInput(
                  hintText: 'Password',
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 24),
                CustomButton(
                  text: 'Login',
                  onPressed: () {
                    // TODO: Implement login logic
                  },
                  isPrimary: true,
                ),
                const SizedBox(height: 16),
                CustomButton(
                  text: 'Register',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()),
                    );
                  },
                  isPrimary: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
