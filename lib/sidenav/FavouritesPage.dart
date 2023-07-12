import 'package:flutter/material.dart';
class FavouritesPage extends StatelessWidget {

  const FavouritesPage({Key? key}) : super(key: key);

  static const List<Favourite> favourites = [
    Favourite(
      name: 'Chief Organisers',
      image: 'assets/images/campprofileorganizer.png',
      info: 'This Organisers are in charge of the camp, all activities and determine how the camp should move on.',
    ),
    Favourite(
      name: 'Kitchen Committee',
      image: 'assets/images/campprofileorganizer.png',
      info: 'This committee handles all food conections right from cooking up to sharing. Individuals found in this committees have been chosen wisely to prepare necesarry and good food to meet everyones taste.',
    ),
    Favourite(
      name: 'Sports Committee',
      image: 'assets/images/campprofileorganizer.png',
      info: 'This committee handles all sport related stuff. There would take care of both the handball and football games, out door and indoor games daily till the finals.',
    ),
    Favourite(
      name: 'Health Committee',
      image: 'assets/images/campprofileorganizer.png',
      info: 'Well equiped medical persons are to handle the health committee. the individuals who are in this committee have had an eperience of more than 6 months at the hospital. Drugs would be provided and proper care would be given to all individuals.',
    ),
    Favourite(
      name: 'Liturgy Committee',
      image: 'assets/images/campprofileorganizer.png',
      info: 'This Committee handles well all things that concerning liturgy, prayers and animation.',
    ),
    Favourite(
      name: 'Discipline Committee',
      image: 'assets/images/campprofileorganizer.png',
      info: 'A well equipped discipline committee has been put in place to ensure proper security. individuals would be taken properly well of without having to face any fear.',
    ),
    Favourite(
      name: 'Canteen Master',
      image: 'assets/images/campprofileorganizer.png',
      info: 'One must not only wait for food time to reach, one can get to the canteen anytime and get something to eat. things campers like would be provided at the canteen by the individuals who are in charge.',
    ),
    Favourite(
      name: 'Dj/Journalist',
      image: 'assets/images/campprofileorganizer.png',
      info: 'This guy will take care of all musical animations at the camp site. providing daily news broadcast to the campers.',
    ),
    Favourite(
      name: 'Dom Captains',
      image: 'assets/images/campprofileorganizer.png',
      info: 'This Committee are in charge of doms and stores, making sure nothing is stolen and everyone getting his or her things as they were.',
    ),
    Favourite(
      name: 'Logistics',
      image: 'assets/images/campprofileorganizer.png',
      info: 'The Chief organisers will handle the logistics making sure everything goes on smoothly',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Committees'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 12),
        itemCount: favourites.length,
        itemBuilder: (BuildContext context, int index) {
          final favourite = favourites[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(favourite.image),
            ),
            title: Text(favourite.name),
            subtitle: Text(favourite.info),
          );
        },
      ),
    );
  }
}

class Favourite {
  final String name;
  final String image;
  final String info;

  const Favourite({
    required this.name,
    required this.image,
    required this.info,
  });
}