import 'package:flutter/material.dart';
import '../Home.dart';
import '../Profile/Profile_page.dart';
import 'Home_page.dart';
import 'colors.dart';

class BottomMenuBar extends StatefulWidget {
  @override
  _BottomMenuBarState createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home_outlined, color: KColors.primary),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Home(isLogin: true,);
                  }));
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.bookmark_border_rounded, color: KColors.icon),
                onPressed: () { Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.person_outline_rounded, color: KColors.icon),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return profile();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
