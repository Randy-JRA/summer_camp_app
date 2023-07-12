import 'package:flutter/material.dart';

class ActivitiesPage extends StatelessWidget {
  final List<Activity> activities = [
    const Activity(
      title: 'Game day',
      image: 'assets/images/campmonday.png',
      description: 'Do not miss out this special workshop.',
    ),
    const Activity(
      title: 'Professional day/Talent Show day',
      image: 'assets/images/camptuesday.png',
      description: 'Get ready to showcase your admired profession or talent.',
    ),
    const Activity(
      title: 'Brain Box day',
      image: 'assets/images/campwednesday.png',
      description: 'Come and learn about your doctrine, General knowledge and more.',
    ),
    const Activity(
      title: 'Movie/Old School day',
      image: 'assets/images/campthursday.png',
      description: 'Get ready to experience a wonderful movie/old school milestone.',
    ),
    const Activity(
      title: 'Cultural day',
      image: 'assets/images/campfriday.png',
      description: 'Come and Witness allot of cultures around you.',
    ),
    const Activity(
      title: 'Excurtion',
      image: 'assets/images/campexcurtion.jpeg',
      description: 'Get ready to venture into the world. explore and learn.',
    ),
    const Activity(
      title: 'End of Camp Party',
      image: 'assets/images/campsaturday.png',
      description: 'A wonderful cinderella I quote ball dance.',
    ),
    const Activity(
      title: 'Workshop',
      image: 'assets/images/campworkshop.jpeg',
      description: 'Do not miss out this special workshop.',
    ),
    const Activity(
      title: 'Sporting events',
      image: 'assets/images/campsports.png',
      description: 'Outdoor and Indoor games. not forgetting the Football and Handball Cup',
    ),
    const Activity(
      title: 'Talks',
      image: 'assets/images/camptalks.png',
      description: 'Special talks to be given by experts.',
    ),
    const Activity(
      title: 'Holy Mass, Adoration and Confessions',
      image: 'assets/images/campmass.png',
      description: 'In the year of the eucharist, let our spirituality bring us close to God.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camp Activites'),
      ),
      body: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    activities[index].image,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: Text(activities[index].title),
                    subtitle: Text(activities[index].description),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Activity {
  final String title;
  final String image;
  final String description;

  const Activity({
    required this.title,
    required this.image,
    required this.description,
  });
}