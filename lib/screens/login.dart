import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Positioned(
                  top: -180,
                  left: -200,
                  child: Image.asset(
                    'assets/photos/circleBig.png',
                    height: MediaQuery.of(context).size.height * 0.8,
                  ),
                ),
                Positioned(
                  top: -50,
                  left: 10,
                  child: Image.asset(
                    'assets/photos/border.png',
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                ),
                Positioned(
                  top: -30,
                  left: -30,
                  child: Image.asset(
                    'assets/photos/circlemed.png',
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 5,
                  child: Image.asset(
                    'assets/photos/circleSmall.png',
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 250,
                  child: Image.asset(
                    'assets/photos/circleSmaller.png',
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Positioned(
                    top: 120,
                    left: 50,
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontFamily: 'El Messiri',
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                  textAlign: TextAlign.right,
                  decoration: ThemeHelper().textInputDecoration(
                      'رقم الهوية', 'أدخل رقم الهوية الخاص بك')),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.right,
                  decoration: ThemeHelper().textInputDecoration(
                      'كلمة المرور', 'أدخل كلمة الخاصة بك')),
            ),
          ],
        ));
  }
}
