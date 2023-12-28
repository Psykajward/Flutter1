import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../JobPortal/Bottom_menu_bar.dart';
import '../JobPortal/Images.dart';

class Mahmoud extends StatefulWidget {
  const Mahmoud({Key? key}) : super(key: key);

  @override
  State<Mahmoud> createState() => _MahmoudState();
}

class _MahmoudState extends State<Mahmoud> {
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      bottomNavigationBar: BottomMenuBar(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? Icons.shield_moon : Icons.sunny))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Divider(),
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(Images.user4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Mahmoud Mahmoud',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Mahmoud123@gmail.com',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Professional Builder ',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(Icons.school_rounded),
              Text(
                'Banisuiaf university',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(Icons.location_on),
              Text(
                'Giza City',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(20)),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Mahmoud();
                      }));
                    },
                    icon: Icon(Icons.message),
                    label: Text('Message'),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Mahmoud();
                      }));
                    },
                    icon: Icon(Icons.insert_drive_file_outlined),
                    label: Text('CV'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


