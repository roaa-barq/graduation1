import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';

class officer extends StatelessWidget {
  const officer({Key? key}) : super(key: key);

  static const String _title = 'قائمة الموظفين';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            _title,
            style: TextStyle(
              fontFamily: 'El Messiri',
              fontSize: 30,
              color: Colors.white,
            ),
          )),
          // backgroundColor: greenDark,
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              greenLight,
              greenDark,
            ],
          ))),
          toolbarHeight: 60,
        ),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(6),
              child: FlatButton(
                onPressed: null,
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: greenDark, width: 2)),
                    child: Center(
                      child: Text(
                        'رؤى جمال برق',
                        style: TextStyle(
                          fontFamily: 'El Messiri',
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                    )),
              )),
        ],
      )),
    );
  }
}
