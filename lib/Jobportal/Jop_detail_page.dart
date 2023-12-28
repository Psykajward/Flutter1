import 'package:flutter/material.dart';
import 'Home_page.dart';
import 'colors.dart';
import 'images.dart';
class JobDetailPage extends StatefulWidget {
  static Route<T> getJobDetail<T>() {
    return MaterialPageRoute(
      builder: (_) => JobDetailPage(),
    );
  }

  @override
  _JobDetailPageState createState() => _JobDetailPageState();
}

class _JobDetailPageState extends State<JobDetailPage> {
  Widget _header(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(Images.dropbox, height: 40),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Almotaheda",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: KColors.title,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Builder",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: KColors.subtitle,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 32),
          Row(
            children: [
              _headerStatic("Salary", "\$150,000"),
              _headerStatic("Applicants", "20"),
              _headerStatic("Salary", "\$1000,000"),
            ],
          ),
          SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child:
                Image.asset(Images.doc, height: 20, color: KColors.primary),
              ),
              Expanded(
                child:
                Image.asset(Images.museum, height: 20, color: KColors.icon),
              ),
              Expanded(
                child:
                Image.asset(Images.clock, height: 20, color: KColors.icon),
              ),
              Expanded(
                child: Image.asset(Images.map, height: 20, color: KColors.icon),
              ),
            ],
          ),
          Divider(
            color: KColors.icon,
            height: 25,
          )
        ],
      ),
    );
  }

  Widget _headerStatic(String title, String sub) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: KColors.subtitle,
            ),
          ),
          SizedBox(height: 5),
          Text(
            sub,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: KColors.title,
            ),
          )
        ],
      ),
    );
  }

  Widget _jobDescription(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Job Description",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            "You will be a Builder worker whose helping in improving the construct of the building by following the instruction of the supervisor Engineer ",
            style: TextStyle(fontSize: 14, color: KColors.subtitle),
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero)),
            child: Text("Learn more",
                style: TextStyle(fontSize: 14, color: KColors.primary)),
          )
        ],
      ),
    );
  }

  Widget _ourPeople(BuildContext context) {
    return Container(
      height: 92,
      padding: EdgeInsets.only(left: 16),
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Our People",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          SizedBox(height: 12),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _people(context, img: Images.user1, name: "J. Smith"),
                _people(context, img: Images.user4, name: "Mattews"),
                _people(context, img: Images.user6, name: "Kyole"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _people(BuildContext context, {required String img, required String name}) {
    return Container(
      margin: EdgeInsets.only(right:50),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(img),
          ),
          SizedBox(height: 6),
          Text(name, style: TextStyle(fontSize: 10, color: KColors.subtitle)),
        ],
      ),
    );
  }

  Widget _apply(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(KColors.primary),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 16))),
              onPressed: () {
                Widget cancelButton = TextButton(
                  child: Text("No"),
                  onPressed:  () {Navigator.pop(context);},
                );
                Widget continueButton = TextButton(
                  child: Text("Yes"),
                  onPressed:  () {
                    Widget okButton = TextButton(
                      child: Text("OK"),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      },
                    );

                    // set up the AlertDialog
                    AlertDialog alert = AlertDialog(
                      title: Text("Applying"),
                      content: Text("Successfully applied ."),
                      actions: [
                        okButton,
                      ],
                    );

                    // show the dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  },
                );

                // set up the AlertDialog
                AlertDialog alert = AlertDialog(
                  title: Text("AlertDialog"),
                  content: Text("Would you like to continue applying for this job ? "),
                  actions: [
                    cancelButton,
                    continueButton,
                  ],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
              child: Text(
                "Apply Now",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 14),
          SizedBox(
            height: 40,
            width: 65,
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(color: KColors.primary),
                ),
              ),
              child: Icon(
                Icons.bookmark_border,
                color: KColors.primary,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KColors.background,
        iconTheme: IconThemeData(color: KColors.primary),
        elevation: 1,
        actions: [
          IconButton(icon: Icon(Icons.cloud_upload_outlined), onPressed: () {})
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(context),
          _jobDescription(context),
          _ourPeople(context),
          _apply(context)
        ],
      ),
    );
  }
}
