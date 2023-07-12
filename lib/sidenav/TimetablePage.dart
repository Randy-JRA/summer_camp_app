import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../colors/AppColors.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({Key? key}) : super(key: key);

  void _launchURL() async {
    const url = 'https://docs.google.com/spreadsheets/d/1TaNtEKN0B5XqYU2uKRzME70NcGKKwteg/edit?usp=sharing&ouid=109095415764311552351&rtpof=true&sd=true';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
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
              Icons.book_online,
              color: AppColors.myprimary,
              size: 80.0,
            ),
            const Text(
              'Click the button below to view the timetable.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton.icon(
              onPressed: () => _launchURL(),
              icon: const Icon(Icons.chat_bubble, size: 32),
              label: const Text(
                'View Time Table',
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