import 'package:flutter/material.dart';
class OrganizersPage extends StatelessWidget {

  const OrganizersPage({Key? key}) : super(key: key);

  static const List<Organizer> organizers = [
    Organizer(
      name: 'Rev Fr Jason Mulu',
      image: 'assets/images/campprofileorganizer.png',
      info: 'Parish Priest.',
    ),
    Organizer(
      name: 'Rev Fr Elias Sengka',
      image: 'assets/images/campprofileorganizer.png',
      info: 'Youth Chaplain.',
    ),
    Organizer(
      name: 'Austin Ankiambom',
      image: 'assets/images/campprofileorganizer.png',
      info: 'Chief Organizer.',
    ),
    Organizer(
      name: 'Chekwi Tamnang',
      image: 'assets/images/campprofileorganizer.png',
      info: 'Chief Organizer.',
    ),
    Organizer(
      name: 'Lukong Bernardine',
      image: 'assets/images/campprofileorganizer.png',
      info: 'Co-Organizer.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Organizers'),
      ),
      body: ListView.builder(
        itemCount: organizers.length,
        itemBuilder: (BuildContext context, int index) {
          final organizer = organizers[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(organizer.image),
            ),
            title: Text(organizer.name),
            subtitle: Text(organizer.info),
          );
        },
      ),
    );
  }
}

class Organizer {
  final String name;
  final String image;
  final String info;

  const Organizer({
    required this.name,
    required this.image,
    required this.info,
  });
}