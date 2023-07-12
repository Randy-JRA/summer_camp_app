import 'package:flutter/material.dart';

class TalksPage extends StatelessWidget {
  final List<Talk> talks = [
    const Talk(
      title: 'Talk 1: Honor Your Father And Your Mother - Given By',
      image: 'assets/images/logo.png',
      description: 'The Young ones should bear the yoke of their youth by honouring their father and mother.',
    ),
    const Talk(
      title: 'Talk 2: Sexuality and Relationship - Given By',
      image: 'assets/images/logo.png',
      description: 'The young ones should grow up knowing their role in the society, mending them selves and being great ones of moral, not to fall as victims',
    ),
    const Talk(
      title: 'Talk 3: Junior Youths As The Light of The Church And The Society - Given By',
      image: 'assets/images/logo.png',
      description: 'The young ones should develop and evangelise about their faith, grow their spirituality and boost their believe in their doctrine.',
    ),
    const Talk(
      title: 'Talk 4: Friendship And Career Path',
      image: 'assets/images/logo.png',
      description: 'Many young ones dont know the road to pursuer. an oriented path would help them on the way. making friends and choosing friends would be a top priority to them',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camp Speakers'),
      ),
      body: ListView.builder(
        itemCount: talks.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    talks[index].image,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: Text(talks[index].title),
                    subtitle: Text(talks[index].description),
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

class Talk {
  final String title;
  final String image;
  final String description;

  const Talk({
    required this.title,
    required this.image,
    required this.description,
  });
}