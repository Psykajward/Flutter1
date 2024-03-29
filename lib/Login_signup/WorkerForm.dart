import 'package:flutter/material.dart';

import '../Home.dart';
import 'Hexcolor.dart';
import 'login.dart';
enum FormData { Name, Phone, Email, Gender, password, ConfirmPassword }

class WorkerSignupScreen extends StatefulWidget {
  @override
  State<WorkerSignupScreen> createState() => _WorkerSignupScreen();
}

class _WorkerSignupScreen extends State<WorkerSignupScreen> {
  Color enabled = const Color.fromARGB(255, 63, 56, 89);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.grey;
  Color backgroundColor = const Color(0xFF1F1A30);
  bool ispasswordev = true;

  FormData? selected;

  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.1, 0.4, 0.7, 0.9],
            colors: [
              HexColor("#4b4293").withOpacity(0.8),
              HexColor("#4b4293"),
              HexColor("#08418e"),
              HexColor("#08418e")
            ],
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                HexColor("#fff").withOpacity(0.2), BlendMode.dstATop),
            image: const NetworkImage(
              'https://mir-s3-cdn-cf.behance.net/project_modules/fs/01b4bd84253993.5d56acc35e143.jpg',
            ),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 5,
                  color:
                  const Color.fromARGB(255, 171, 211, 250).withOpacity(0.4),
                  child: Container(
                    width: 400,
                    padding: const EdgeInsets.all(40.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('images/logo1.jpg',
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "Create your account",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                letterSpacing: 0.5),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: selected == FormData.Email
                                ? enabled
                                : backgroundColor,
                          ),
                          padding: const EdgeInsets.all(5.0),
                          child: TextField(
                            controller: nameController,
                            onTap: () {
                              setState(() {
                                selected = FormData.Name;
                              });
                            },
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.title,
                                color: selected == FormData.Name
                                    ? enabledtxt
                                    : deaible,
                                size: 20,
                              ),
                              hintText: 'Full Name',
                              hintStyle: TextStyle(
                                  color: selected == FormData.Name
                                      ? enabledtxt
                                      : deaible,
                                  fontSize: 12),
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                                color: selected == FormData.Name
                                    ? enabledtxt
                                    : deaible,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: selected == FormData.Phone
                                ? enabled
                                : backgroundColor,
                          ),
                          padding: const EdgeInsets.all(5.0),
                          child: TextField(
                            controller: phoneController,
                            onTap: () {
                              setState(() {
                                selected = FormData.Phone;
                              });
                            },
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.phone_android_rounded,
                                color: selected == FormData.Phone
                                    ? enabledtxt
                                    : deaible,
                                size: 20,
                              ),
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(
                                  color: selected == FormData.Phone
                                      ? enabledtxt
                                      : deaible,
                                  fontSize: 12),
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                                color: selected == FormData.Phone
                                    ? enabledtxt
                                    : deaible,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: selected == FormData.Email
                                ? enabled
                                : backgroundColor,
                          ),
                          padding: const EdgeInsets.all(5.0),
                          child: TextField(
                            controller: emailController,
                            onTap: () {
                              setState(() {
                                selected = FormData.Email;
                              });
                            },
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: selected == FormData.Email
                                    ? enabledtxt
                                    : deaible,
                                size: 20,
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: selected == FormData.Email
                                      ? enabledtxt
                                      : deaible,
                                  fontSize: 12),
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                                color: selected == FormData.Email
                                    ? enabledtxt
                                    : deaible,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: selected == FormData.password
                                  ? enabled
                                  : backgroundColor),
                          padding: const EdgeInsets.all(5.0),
                          child: TextField(
                            controller: passwordController,
                            onTap: () {
                              setState(() {
                                selected = FormData.password;
                              });
                            },
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.lock_open_outlined,
                                  color: selected == FormData.password
                                      ? enabledtxt
                                      : deaible,
                                  size: 20,
                                ),
                                suffixIcon: IconButton(
                                  icon: ispasswordev
                                      ? Icon(
                                    Icons.visibility_off,
                                    color: selected == FormData.password
                                        ? enabledtxt
                                        : deaible,
                                    size: 20,
                                  )
                                      : Icon(
                                    Icons.visibility,
                                    color: selected == FormData.password
                                        ? enabledtxt
                                        : deaible,
                                    size: 20,
                                  ),
                                  onPressed: () => setState(
                                          () => ispasswordev = !ispasswordev),
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: selected == FormData.password
                                        ? enabledtxt
                                        : deaible,
                                    fontSize: 12)),
                            obscureText: ispasswordev,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                                color: selected == FormData.password
                                    ? enabledtxt
                                    : deaible,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: selected == FormData.ConfirmPassword
                                  ? enabled
                                  : backgroundColor),
                          padding: const EdgeInsets.all(5.0),
                          child: TextField(
                            controller: confirmPasswordController,
                            onTap: () {
                              setState(() {
                                selected = FormData.ConfirmPassword;
                              });
                            },
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.lock_open_outlined,
                                  color: selected == FormData.ConfirmPassword
                                      ? enabledtxt
                                      : deaible,
                                  size: 20,
                                ),
                                suffixIcon: IconButton(
                                  icon: ispasswordev
                                      ? Icon(
                                    Icons.visibility_off,
                                    color: selected ==
                                        FormData.ConfirmPassword
                                        ? enabledtxt
                                        : deaible,
                                    size: 20,
                                  )
                                      : Icon(
                                    Icons.visibility,
                                    color: selected ==
                                        FormData.ConfirmPassword
                                        ? enabledtxt
                                        : deaible,
                                    size: 20,
                                  ),
                                  onPressed: () => setState(
                                          () => ispasswordev = !ispasswordev),
                                ),
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(
                                    color:
                                    selected == FormData.ConfirmPassword
                                        ? enabledtxt
                                        : deaible,
                                    fontSize: 12)),
                            obscureText: ispasswordev,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                                color: selected == FormData.ConfirmPassword
                                    ? enabledtxt
                                    : deaible,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextButton(
                            onPressed: () {
                              if (confirmPasswordController.text.isNotEmpty && nameController.text.isNotEmpty && passwordController.text.isNotEmpty && phoneController.text.isNotEmpty &&emailController.text.isNotEmpty) {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Home(isLogin: true);
                                }));
                              }
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 0.5,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFF2697FF),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14.0, horizontal: 80),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(12.0)))),
                      ],
                    ),
                  ),
                ),

                //End of Center Card
                //Start of outer card
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("If you have an account ",
                        style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 0.5,
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      },
                      child: Text("Sing in",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                              fontSize: 14)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
