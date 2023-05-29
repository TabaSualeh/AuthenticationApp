// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:loginpage_figma/screens/login.dart';

import '../widgets/customButton.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Stack(children: [
              _imageBox("assets/header.png"),
              Positioned(
                top: 60,
                right: 42,
                child: CustomButton(
                    btnName: "SIGN IN",
                    callback: signin,
                    width: 122,
                    height: 40,
                    fontsize: 20,
                    fontColor: Color(0xff2F80ED),
                    buttonBackgroundColor: Color(0xffFFFFFF)),
              ),
            ]),
          ),
          Text("NEW USER? GET STARTED NOW",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4F4F4F))),
          Container(
            margin: EdgeInsets.symmetric(vertical: 22),
            child: _socialMediaImages(),
          ),
          _dividerOR(),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 46),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 20.5),
                    child: _displayText("Email ID*", Color(0xff4F4F4F))),
                _showTextField(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _displayText("Password*", Color(0xff4F4F4F)),
                      TextButton(
                          onPressed: forget,
                          child: _displayText("Forgot Password?",
                              Color.fromARGB(255, 36, 125, 241)))
                    ],
                  ),
                ),
                _showTextField(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CustomButton(
                topMargin: 20,
                rightMargin: 46,
                leftMargin: 26,
                btnName: "SIGN UP",
                callback: signupBut,
                width: 356,
                height: 44,
                fontsize: 20,
                fontColor: Color(0xffFFFFFF),
                buttonBackgroundColor: Color(0xff2F80ED)),
          ),
          _textInBox("Terms and Conditions | Privacy Policy"),
          Flexible(child: _imageBox("assets/footer.png")),
        ],
      ),
    );
  }

  // Social Media Images
  Row _socialMediaImages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.network(
          "https://s3-alpha-sig.figma.com/img/2d9a/1664/9bc2077bb18aa772a1ca7dc44a91d0fb?Expires=1685318400&Signature=K-dwT5yWhbnAL8B09I31Qb8AV5c08twxxyGmRatFTIGh19yYSzP5GzTWygcuydw3ZGjztCu8XgL~ve4BUy11xBf4DcwsLqLEvE93wFi6PEbhDAMrF5jJVg-pRIzG-VFZKCZ6SWkfr8byW~kGlQQZSze0JOQdx~M0fNShte9M0uvSfbxclJNDzrmwonvA72Hy0tYYFEP-Sdyz7uCyIwnavHeFC8DH9kaMrfIDpv8octpG3vtET5UpXPe8B9IYthkiYWX51g11ddhybZptkV5v65QR7FIT3Brvw5M8eXlPlehcHtTVCkcgc4q0jQLsLeEPE3sgsRRnfUwUn1MMyaFS0g__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
          width: 40,
          height: 26,
        ),
        Image.network(
          "https://s3-alpha-sig.figma.com/img/f069/24c0/58e8f5ac091d5fda6b6c6223ee628208?Expires=1685318400&Signature=jrP7u2QyvCIC2-K36Cg4q6UK7h8aY~PrRhtko4oLXoB7BKICwUY1no4PQ1DXEkILKR-b0B8VpQI6-I9XlIUFU5evkQjqxiTBtjw9g18DylkQIr9J8m-mAtje4AKDYS7RsWMahWTZt5--zHx01khEtWresu-tWCK~QJYHhguTgsA0jskJu~yvOJ9xkD53isxQTL9xPeNY8QBAPCORzJPsdsMPDToxG9wuwiask-fo8raeMYuR~mblJetjYMtRXVqY5JSIkvfHnXATeShLYeXIuS2ZCKaPemU9hAoLyz~poCtrJWESly-XW2YRIgpGXy3jWQNY-9AvWGxduenEfMZMhg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
          width: 27,
          height: 26,
        ),
        Image.network(
          "https://cdn-icons-png.flaticon.com/512/733/733579.png",
          width: 26.82,
          height: 25.79,
        ),
      ],
    );
  }

  // Divider with OR Text
  Row _dividerOR() {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xff828282),
            thickness: 1,
            endIndent: 16,
          ),
        ),
        Text("OR",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff4F4F4F))),
        Expanded(
          child: Divider(
            color: Color(0xff828282),
            thickness: 1,
            indent: 16,
          ),
        ),
      ],
    );
  }

  // TextField
  SizedBox _showTextField() {
    return SizedBox(
      width: 356,
      height: 35,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        )),
      ),
    );
  }

  // Text to Display
  Text _displayText(String displayText, Color? fontColor) {
    return Text(
      displayText,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: fontColor),
    );
  }

  // Terms Text
  SizedBox _textInBox(String textToShow) {
    return SizedBox(
      height: 45,
      width: 208,
      child: Text(
        textToShow,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xff4F4F4F)),
      ),
    );
  }

  // Asset Image Container
  SizedBox _imageBox(String imagePath) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        imagePath,
        fit: BoxFit.fill,
      ),
    );
  }

  void signin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void signupBut() {
    print("Main SignUP Button Worked");
  }

  void forget() {
    print("FOrget");
  }
}
