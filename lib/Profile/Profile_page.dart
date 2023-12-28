import 'package:flutter/material.dart';

import '../JobPortal/Bottom_menu_bar.dart';
import '../JobPortal/Images.dart';
import 'Update_prof.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      bottomNavigationBar: BottomMenuBar(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
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
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(Images.user1),
                      ),),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Mahmoud Osman',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'mahmoudosman@gmail.com',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        side: BorderSide.none,
                        shape: StadiumBorder()),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return UpdateProfile();
                      }));
                    },
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    )),
              ),
              Divider(),
              profilePageItems(
                title: 'Setting',
                icon: Icons.settings,
                endIcon: true,
                textcolor: Colors.blue,
                onPress: () {},
              ),
              profilePageItems(
                title: 'Information',
                icon: Icons.info,
                endIcon: true,
                textcolor: Colors.blue,
                onPress: () {},
              ),
              profilePageItems(
                title: 'Logout',
                icon: Icons.logout,
                endIcon: false,
                onPress: (){
                } ,
                textcolor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class profilePageItems extends StatelessWidget {
  const profilePageItems(
      {required this.icon,
        required this.onPress,
        this.endIcon = true,
        this.textcolor,
        required this.title});

  final String title;
  final IconData icon;
  final Function onPress;
  final bool endIcon;
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {

    return ListTile(
        onTap: onPress(),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Icon(
            icon,
            color: textcolor,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        trailing: endIcon
            ? Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Icon(
            Icons.chevron_right,
            color: Colors.grey,
          ),
        )
            : null);
  }
}
