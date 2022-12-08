import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

String searchString = "";

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Home Page",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Ahmed Magdy Maklad",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              accountEmail: Text("user@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/avatars/ahmed_magdy_maklad.jpeg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/159287219_2807893256143451_4094431252738611762_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHQFs3YB7cKKY1N0ERI0V8rFNp0PPFOvqkU2nQ88U6-qR7egLMqnWmkvB11HkqtfPgeNaXgPLo4m_HXECf2hLOU&_nc_ohc=-F1evXuY1Y0AX985PNH&_nc_ht=scontent-hbe1-1.xx&oh=00_AT8J2eNF3jo-9R-UJU3ySoi7FKpqSh7F-ojDChc1Z43krA&oe=634D8D24"),
                )
              ],
            ),
            ListTile(
              title: Text("Account"),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text("Cart"),
              leading: Icon(Icons.shopping_cart),
            ),
            ListTile(
              title: Text("My Files"),
              leading: Icon(Icons.folder),
            ),
            ListTile(
              title: Text("Starred"),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text("Recent"),
              leading: Icon(Icons.watch_later_outlined),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Help"),
              leading: Icon(Icons.help),
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 10),


        ],
      ),
    );
  }
}