import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenDark,
      body: ListView(
        children: <Widget>[
          Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text('إنشاء حساب جديد',
                      style: TextStyle(
                        fontFamily: 'El Messiri',
                        fontSize: 35,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        //
                      )))),
          Stack(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                  )),
              Positioned(
                top: -250,
                right: -150,
                child: Image.asset(
                  'assets/photos/border.png',
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 150, 30, 0),
                child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    textAlign: TextAlign.right,
                    decoration: ThemeHelper().textInputDecoration(
                        Icons.perm_identity,
                        "الإسم",
                        "أدخل الإسم الرباعي الخاص بك ..")),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 210, 30, 0),
                child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    textAlign: TextAlign.right,
                    decoration: ThemeHelper().textInputDecoration(
                        Icons.phone_android,
                        "رقم الهاتف",
                        "أدخل رقم الهاتف الخاص بك ..")),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 270, 30, 0),
                child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    textAlign: TextAlign.right,
                    decoration: ThemeHelper().textInputDecoration(
                        Icons.perm_identity,
                        "رقم الهوية",
                        "أدخل رقم الهوية الخاص بك ..")),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 330, 30, 0),
                child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    textAlign: TextAlign.right,
                    decoration: ThemeHelper().textInputDecoration(Icons.lock,
                        "كلمة المرور", "أدخل كلمة المرور الخاصة بك ..")),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 390, 30, 0),
                child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    textAlign: TextAlign.right,
                    decoration: ThemeHelper().textInputDecoration(
                        Icons.lock,
                        "تأكيد كلمة المرور",
                        "أعد كتابة كلمة المرور الخاصة بك ..")),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 460, 60, 0),
                child: FlatButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                greenLight,
                                greenDark,
                              ],
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Center(
                          child: Text(
                            'إنشاء حساب',
                            style: TextStyle(
                              fontFamily: 'El Messiri',
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ))),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 520),
                  child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'هل تمتلك حساب ؟ تسجيل الدخول',
                        style: TextStyle(
                          fontFamily: 'El Messiri',
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
