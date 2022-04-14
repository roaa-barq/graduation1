import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';
import 'package:waste_collector/screens/addMap.dart';
import 'package:waste_collector/screens/addOfficer.dart';
import 'package:waste_collector/screens/admin.dart';
import 'package:waste_collector/screens/changeBasket.dart';
import 'package:waste_collector/screens/changeMap.dart';
import 'package:waste_collector/screens/customer.dart';
import 'package:waste_collector/screens/login.dart';
import 'package:waste_collector/screens/officersTable.dart';
import 'package:waste_collector/screens/profile.dart';
import 'package:waste_collector/screens/signup.dart';
import 'package:waste_collector/screens/welcome.dart';

class adminNav extends StatefulWidget {
  const adminNav({Key? key}) : super(key: key);
  final String title = "";

  @override
  _adminNavState createState() => _adminNavState();
}

class _adminNavState extends State<adminNav> {
  int selectedPos = 6;

  var PageAll = [
    login(),
    profile(),
    officer(),
    changeMap(),
    addMap(),
    add(),
    admin()
  ];

  var slogan = 6;

  // var icon = IconData(slogan);

  double bottomNavBarHeight = 70;

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.logout, "تسجيل الخروج", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 10,
          color: Colors.white,
        )),
    new TabItem(Icons.person, "معلوماتي", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 10,
          color: Colors.white,
        )),
    new TabItem(Icons.list_alt, "الموظفين", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 10,
          color: Colors.white,
        )),
    new TabItem(Icons.change_circle, "تعديل سعة", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 10,
          color: Colors.white,
        )),
    new TabItem(Icons.pin_drop, "اضافة حاوية", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 10,
          color: Colors.white,
        )),
    new TabItem(Icons.person_add, "اضافة موظف", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 10,
          color: Colors.white,
        )),
    new TabItem(Icons.home, "الرئيسية", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 10,
          color: Colors.white,
        )),
  ]);

  CircularBottomNavigationController? _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = new CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            child: bodyContainer(),
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  Widget bodyContainer() {
    switch (selectedPos) {
      case 0:
        slogan = 0;
        break;
      case 1:
        slogan = 1;
        break;
      case 2:
        slogan = 2;
        break;
      case 3:
        slogan = 3;
        break;
      case 4:
        slogan = 4;
        break;
      case 5:
        slogan = 5;
        break;
      case 6:
        slogan = 6;
        break;
    }

    return GestureDetector(
      child: Scaffold(
        body: PageAll[slogan],
      ),
      onTap: () {
        if (_navigationController?.value == tabItems.length - 1) {
          _navigationController?.value = 0;
        } else {
          _navigationController?.value++;
        }
      },
    );
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      barHeight: bottomNavBarHeight,
      normalIconColor: Colors.white,
      barBackgroundColor: greenDark,
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int selectedPos) {
        setState(() {
          this.selectedPos = selectedPos;
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController?.dispose();
  }
}
