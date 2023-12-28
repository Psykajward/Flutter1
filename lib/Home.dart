import 'package:flutter/material.dart';

import 'Jobportal/Bottom_menu_bar.dart';
import 'Jobportal/Home_page.dart';
import 'Jobportal/colors.dart';
import 'findworker/work_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required bool isLogin}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.background,
      bottomNavigationBar: BottomMenuBar(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Row(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              padding: EdgeInsets.zero,
              child: Text(
                'Find Work',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
            MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FindWorker();
                }));
              },
              padding: EdgeInsets.zero,
              child: Text(
                'Find Worker',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ],
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: GestureDetector(
              onTap: () {
                print('object');
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Home(isLogin: true,);
                }));
              },
              child: Center(
                  child: Text(
                    'We Build',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ))),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/R.jpg"),fit: BoxFit.cover),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SafeArea(
                  child: Expanded(
                    child: Column(children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'images/logo3.jpeg',
                            height: 150,
                            width: 150,
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    'We Build is web site helping people to find work and saving alot alot of opportunites to work and helping engineers who want manpower and providing this manpower easily without too much efforts and this will help to reduce the precentage Unemployment in the countery',
                    style: TextStyle(fontSize: 18,color: Colors.white),
                  ),
                ),
                SizedBox(height: 15,),
                Text('Always Wear PPE All workers and visitors in the construction site should wear the required PPE to reduce exposure to various hazards on the worksite. Common PPEs include goggles, helmets, gloves, ear muffs or plugs, boots, and high visibility vests and suits',  style: TextStyle(fontSize: 18,color: Colors.white),),
                SizedBox(height: 15,),
                Text('Be Mindful And Follow Signs Safety signs allow management to warn and raise health and safety awareness for employees and visitors. Appropriately place them around the site where necessary. Workers should be familiar with the construction site safety tips and different signs: prohibition signs, mandatory signs, warning signs, safe condition signs, and fire fighting equipment signs',  style: TextStyle(fontSize: 18,color: Colors.white)),
                SizedBox(height: 15,),
                Text('Provide Clear Instructions A site induction or contractor induction should be present on site. This will enable new workers to be familiar with site operations. Toolbox talks are also an effective way of relaying health and safety instructions to the workforce. It is conducted before commencing work on either a daily or more frequent basis',  style: TextStyle(fontSize: 18,color: Colors.white)),
                SizedBox(height: 15,),
                Text('Keep Site Tidy Ensure that debris, dust, loose nails, and stagnant water from excavations and backfilling are not just lying around the site. The construction site must be cleaned daily and remain clutter-free to prevent slips and trips.',  style: TextStyle(fontSize: 18,color: Colors.white)),
                SizedBox(height: 15,),
                Text('Organize And Store Tools Properly Ensure that no tools are lying around, and leave lights and power tools unplugged. Following construction site rules will help prevent tools from getting damaged or even causing injury to workers. Organizing them in their rightful place will also allow for easy navigation', style: TextStyle(fontSize: 18,color: Colors.white)),
                SizedBox(height: 15,),
                Text('Use The Right Equipment For The Right Task Often, accidents occur due to the misuse of a tool or equipment. Avoid using makeshift tools. Instead, use the correct tool to get the job done quicker and safer', style: TextStyle(fontSize: 18,color: Colors.white)),
                SizedBox(height: 15,),
                Text('Set Up Safeguards One of the ways to ensure safety on site is placing engineering controls such as barriers, fences, and safeguards. These will help isolate people from hazardous areas with high-voltage electricity or chemicals with toxic fumes.', style: TextStyle(fontSize: 18,color: Colors.white)),
                SizedBox(height: 25,),
                Image.asset('images/Pic1.jpeg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
