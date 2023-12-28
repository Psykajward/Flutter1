import 'package:flutter/material.dart';

import '../Jobportal/Bottom_menu_bar.dart';
import '../Jobportal/colors.dart';
import '../Jobportal/images.dart';
import 'Ahmed hamdy.dart';
import 'Mahmoud Mahmoud.dart';

class FindWorker extends StatelessWidget {
  const FindWorker({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenuBar(),
      appBar: AppBar(
        backgroundColor:  Colors.blueGrey,
        title: Text('Find Worker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ourPeople(context),
          _headerStatic(context),
        ],
      ),
    );
  }
  Widget _ourPeople(BuildContext context) {
    return Container(
      height: 92,
      padding: EdgeInsets.only(left: 16),
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Random People",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          SizedBox(height: 12),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _people(context, img: Images.user1, name: "J. Smith"),
                _people(context, img: Images.user2, name: "L. James"),
                _people(context, img: Images.user3, name: "Emma"),
                _people(context, img: Images.user4, name: "Mattews"),

              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _people(BuildContext context, {required String img, required String name}) {
    return Container(
      margin: EdgeInsets.only(right: 18),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(img),
          ),
          SizedBox(height: 8),
          Text(name, style: TextStyle(fontSize: 8, color: KColors.subtitle)),
        ],
      ),
    );
  }
  Widget _headerStatic(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Card(
                margin: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('assets/user/user1.jpg',width: 70,),
                      title: const Text('Ahmed Hamdey'),
                      subtitle: const Text('carpenter worker'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Hamdy();
                            }));
                          },
                          child: Text('See More'),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border, color: KColors.primary))
                      ],
                    )
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('assets/user/user4.jpg',width: 70,),
                      title: const Text('Mahmoud Mahmoud'),
                      subtitle: const Text('builder worker'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Mahmoud();
                            }));
                          },
                          child: Text('See More'),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border, color: KColors.primary))
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}

