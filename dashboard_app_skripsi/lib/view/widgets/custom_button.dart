import '/constant/services.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isPrimary = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isPrimary ? const Color(0xFF1E232C) : white,
        foregroundColor: isPrimary ? white : const Color(0xFF1E232C),
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: BorderSide(
          color: const Color(0xFF1E232C),
          width: isPrimary ? 0 : 1,
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
