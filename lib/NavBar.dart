import 'package:camp_app/sidenav/ContactPage.dart';
import 'package:camp_app/sidenav/RegisterPage.dart';
import 'package:camp_app/sidenav/TalksPage.dart';
import 'package:flutter/material.dart';
import 'package:camp_app/sidenav/ActivitiesPage.dart';
import 'package:camp_app/sidenav/OrganizersPage.dart';
import 'package:camp_app/sidenav/LocationPage.dart';
import 'package:camp_app/sidenav/FavouritesPage.dart';
import 'package:camp_app/sidenav/TimetablePage.dart';

import 'HomePage.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          UserAccountsDrawerHeader(
              accountName: const Text('Cadet & Altar Severs Camp'),
              accountEmail: const Text('Theme: "It is good for us to bear the yoke in our youth"-Lam 3:27...', style: TextStyle(fontSize: 11,),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                    'assets/images/logo.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/campoverview.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.schedule),
            title: const Text('Schedule-Time table'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimetablePage()),
              );
            },
          ),
           ListTile(
            leading: const Icon(Icons.event),
            title: const Text('Activities'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivitiesPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Speakers-Talks'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TalksPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text('Location'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocationPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Committees'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FavouritesPage()),
              );
            },
          ),
           ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Organisers'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrganizersPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Register For Camp Now'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterPage()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.mail),
            title: const Text('Contact'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactPage()),
              );
            },
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            //onTap: () => null,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit'),
             onTap: () {
             Navigator.pushReplacement(
            context,
              MaterialPageRoute(builder: (context) => const HomePage()),
             );
            },
          ),
        ],
      ),
    );
  }
}
