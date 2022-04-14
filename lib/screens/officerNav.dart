import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';
import 'package:waste_collector/screens/addOfficer.dart';
import 'package:waste_collector/screens/admin.dart';
import 'package:waste_collector/screens/changeBasket.dart';
import 'package:waste_collector/screens/customer.dart';
import 'package:waste_collector/screens/map.dart';
import 'package:waste_collector/screens/gps.dart';
import 'package:waste_collector/screens/login.dart';
import 'package:waste_collector/screens/officersTable.dart';
import 'package:waste_collector/screens/profile.dart';
import 'package:waste_collector/screens/signup.dart';
import 'package:waste_collector/screens/welcome.dart';

class officerNav extends StatefulWidget {
  const officerNav({Key? key}) : super(key: key);
  final String title = "";

  @override
  _officerNavState createState() => _officerNavState();
}

class _officerNavState extends State<officerNav> {
  int selectedPos = 4;

  var PageAll = [login(), profile(), map(), gps(), customer()];

  var slogan = 4;

  // var icon = IconData(slogan);

  double bottomNavBarHeight = 70;

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.logout, "تسجيل الخروج", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 15,
          color: Colors.white,
        )),
    new TabItem(Icons.person, "معلوماتي", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 15,
          color: Colors.white,
        )),
    new TabItem(Icons.map_outlined, "أقرب شاحنة", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 15,
          color: Colors.white,
        )),
    new TabItem(Icons.gps_fixed, "مساري", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 15,
          color: Colors.white,
        )),
    new TabItem(Icons.home, "الرئيسية", greenDark,
        labelStyle: TextStyle(
          fontFamily: 'El Messiri',
          fontSize: 15,
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
