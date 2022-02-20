import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

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
              SizedBox(
                height: 10,
              ),
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
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: SpinKitFadingCircle(
                color: Colors.white,
                size: 50,
                duration: Duration(milliseconds: 3000),
              )),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton(
                onPressed: () {},
                child: Text(
                  'تخطي',
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
