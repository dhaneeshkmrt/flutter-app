import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/screens/home.dart';
import 'package:notes_app/screens/notes_category.dart';
import 'package:notes_app/screens/remainder.dart';
import 'package:notes_app/services/sqlite_service.dart';
import 'package:notes_app/utils/service_locator.dart';
import '../constants/app_constants.dart' as Constant;

class Dashboard extends StatefulWidget {
  final String title;
  Dashboard({Key key, this.title}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static int _selectedMenuIndex = 0;
  final PageController controller =
      PageController(initialPage: _selectedMenuIndex);
  static SqliteService _sqliteServ = getIt<SqliteService>();

  @override
  void initState() {
    super.initState();
    print(_sqliteServ.checkFun());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(Constant.PRIMARY_COLOR),
      ),
      body: PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          onPageChanged: (int pageNumber) {
            setState(() {
              _selectedMenuIndex = pageNumber;
            });
          },
          children: [Home(), NotesCategory(), Remainder()]),
      bottomNavigationBar: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 24,
                ),
                label: 'Home',
                backgroundColor: Color(Constant.PRIMARY_FONT_COLOR)),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note,
                size: 24,
              ),
              label: 'Notes',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.event,
                  size: 24,
                ),
                label: 'Remainder'),
          ],
          backgroundColor: Color(Constant.PRIMARY_COLOR),
          selectedItemColor: Color(Constant.PRIMARY_FONT_COLOR),
          currentIndex: _selectedMenuIndex,
          unselectedItemColor: Color(Constant.MENU_COLOR),
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedMenuIndex = index;
              this.controller.animateToPage(index,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            });
          },
        ),
      ),
    );
  }
}
