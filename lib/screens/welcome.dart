import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          greenLight,
          greenDark,
        ],
      )),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(children: <Widget>[
              Text('أهلا وسهلا',
                  style: TextStyle(
                    fontFamily: 'El Messiri',
                    fontSize: 45,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    //
                  )),
              Text('العنوان',
                  style: TextStyle(
                    fontFamily: 'El Messiri',
                    fontSize: 55,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    //
                  )),
              SizedBox(
                height: 30,
              ),
              Text('هنا سنتمكن من مساعدتك',
                  style: TextStyle(
                    fontFamily: 'El Messiri',
                    fontSize: 20,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    //
                  )),
              Text('بما يخص النفايات الصلبة',
                  style: TextStyle(
                    fontFamily: 'El Messiri',
                    fontSize: 20,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    //
                  )),
              Text('أنشئ حساب واستمتع بالتطبيق',
                  style: TextStyle(
                    fontFamily: 'El Messiri',
                    fontSize: 20,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    //
                  )),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset('assets/photos/welcome.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: FlatButton(
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},
                color: Colors.white,
                child: Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    fontFamily: 'El Messiri',
                    fontSize: 25,
                    color: Colors.black,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: FlatButton(
                onPressed: () {},
                child: Text(
                  'لا تمتلك حساب ؟ إنشاء حساب جديد',
                  style: TextStyle(
                    fontFamily: 'El Messiri',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
