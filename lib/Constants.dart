import 'package:flutter/material.dart';
import 'size_conf.dart';
const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

const kActiveCardColour = Color(0xfff1d1e33);
const kBottomContainerHeight = 80.0;
const kInactiveCardColour = Color(0XFF111328);
const kBottemContainerColour = Color(0XFFEB1555);

const kLableTextStyle = TextStyle(fontSize: 15, color: Colors.white);
const kNumberTextStyle =
TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900, color: Colors.white);
const kLableLargeName = TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white);
const kResultStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black);
const kResultTextStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green);
const kBMITextStyle = TextStyle(fontSize: 100 , fontWeight: FontWeight.bold, color: Colors.white);

