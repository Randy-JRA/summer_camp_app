import 'package:camp_app/sidenav/ActivitiesPage.dart';
import 'package:camp_app/sidenav/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:camp_app/NavBar.dart';
import 'package:camp_app/colors/AppColors.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const NavBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.myprimary,
        title: const Text('St Michael Futru Summer Camp'),
        actions: const <Widget> [
          IconButton(onPressed: null,
              icon: Icon(
                  Icons.more_vert,
                color: AppColors.white,
              ),
          ),
        ],
      ),
      body: const Body(),
    );
  }
}
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  final myNumber = 67; //displays the number of people who have registered already

  @override
  Widget build(BuildContext context) {
    //It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            //it will cover  20% of our total screen
            height: size.height * 0.2,
            child: Stack(
              children: <Widget> [
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 0,
                  ),
                  height: size.height * 0.2 - 27,
                  decoration: const BoxDecoration(
                      color: AppColors.myprimary,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(36), bottomLeft: Radius.circular(36)
                    ),
                  ),
                  child: Row(
                    children: <Widget> [
                      Text(
                          'Hi Camper!',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold,
                          ),
                      ),
                      const Spacer(),
                      Expanded(
                        child: Image.asset(
                          'assets/images/logotransparent.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 30,),
                    padding : const EdgeInsets.symmetric(horizontal: 30,),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: AppColors.myprimary.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: AppColors.myprimary.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text(
                    'Check This Out',
                  style: TextStyle(
                    color: AppColors.mysecondary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue, // Color when the button is pressed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    side: const BorderSide(color: AppColors.myprimary), // Border color and width
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                  child: const Text('Register'),
                ),
                OutlinedButton(
                  onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const NavBar()),
                     );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue, // Color when the button is pressed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    side: const BorderSide(color: AppColors.myprimary), // Border color and width
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                  child: const Text('See More'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 125,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                    title: 'AUGUST 6TH-13TH',
                    icon: (Icons.calendar_month),
                  ),
                  CategoryCard(
                    title: 'Registration 3500frs',
                    icon: (Icons.attach_money),
                  ),
                  CategoryCard(
                    title: 'AGES 5-18',
                    icon: (Icons.people),
                  ),
                  CategoryCard(
                    title: 'Deadline 31st July',
                    icon: (Icons.timer),
                  ),
                  CategoryCard(
                    title: 'camp is for everyone, not only cadets or altar severs',
                    icon: (Icons.people_outlined),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12,),
          const Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              'Are We Ready',
              style: TextStyle(
                color: AppColors.mysecondary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ActivitiesPage()),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.blue, // Color when the button is pressed
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              side: const BorderSide(color: AppColors.myprimary), // Border color and width
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 12.0,
                              ),
                            ),
                            child: const Text('View Activities'),
                          ),
                          Image.asset('assets/images/campmain.png', width: 200, height: 200),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        const SizedBox(height: 5,),
                        const Text(
                          'Stay tuned',
                          style: TextStyle(fontSize: 18, color: AppColors.myprimary, fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'A camp organised by St Michaels parish Futru Nkwen which is to take place at SAJOCCOL MENTEH',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text(
                          'More than',
                          style: TextStyle(fontSize: 14, color: AppColors.myprimary, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          myNumber.toString(),
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: AppColors.mysecondary,
                          ),
                        ),
                        const Text(
                          'Registered',
                          style: TextStyle(fontSize: 14, color: AppColors.myprimary, fontWeight: FontWeight.bold),
                        ),
                        const Icon(
                          Icons.people,
                          color: Colors.blue,
                          size: 32,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.icon, required this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 125,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: AppColors.myprimary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: AppColors.brown,
            offset: Offset(0,0),
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 40.0,
          ),
          const SizedBox(height: 5,),
          Text(
            title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
