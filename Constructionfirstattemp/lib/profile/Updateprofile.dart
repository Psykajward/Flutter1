import 'package:flutter/material.dart';

import '../JobPortal/Bottom_menu_bar.dart';
import '../JobPortal/Images.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenuBar(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(children: <Widget>[
            Stack(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child:CircleAvatar(
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
                ),
              ],
            ),
            SizedBox(height: 12,),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Name'),
                prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ))),
              ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('Password'),
                  prefixIcon: Icon(Icons.password),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ))),
            ),
            SizedBox(
              height: 13,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('E-mail'),
                  prefixIcon: Icon(Icons.email_outlined),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ))),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text('Phone num'),
                  prefixIcon: Icon(Icons.phone),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ))),
            ),
            SizedBox(
              height: 22 ,
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
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
