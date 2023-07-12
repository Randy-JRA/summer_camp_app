import 'package:camp_app/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const _whatsappNumber = '+237697517433'; // replace with your own WhatsApp number

  void _launchWhatsApp(BuildContext context) async {
    final message = Uri.encodeComponent('Hello, I want to register for Camp.');
    final url = 'https://wa.me/$_whatsappNumber/?text=$message';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not launch WhatsApp')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register for Camp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.contact_phone,
              color: AppColors.myprimary,
              size: 80.0,
            ),
            const Text(
              'Registration is now open! Click the button below to register through Whatsapp with the person in charge.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton.icon(
              onPressed: () => _launchWhatsApp(context),
              icon: const Icon(Icons.chat_bubble, size: 32),
              label: const Text(
                'Chat on WhatsApp',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
            const SizedBox(height: 8),
            ClipOval(
              child: Image.asset(
                'assets/images/logo.png',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}