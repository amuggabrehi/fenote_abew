import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);
  static String routeName = "/main_screen";
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _page = 0;

  List pages = [
    {
      'title': 'Home',
      'icon': Icons.church_outlined,
      'index': 0,
    },
    {
      'title': 'Search',
      'icon': CupertinoIcons.search,
      'index': 1,
    },
    {
      'title': 'unsee',
      'icon': CupertinoIcons.plus_circle,
      'index': 2,
    },
    {
      'title': 'Notification',
      'icon': CupertinoIcons.bell_solid,
      'index': 3,
    },
    {
      'title': 'Profile',
      'icon': CupertinoIcons.person,
      'index': 4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 5),
            for (Map item in pages)
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: IconButton(

                  icon: Icon(
                    item['icon'],
                    color: item['index'] != _page
                        ? Colors.grey
                        : Theme.of(context).accentColor,
                    size: 30,
                  ),
                  onPressed: () => navigationTapped(item['index']),
                ),
              ),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
  void navigationTapped(int page) {
    setState(() {
      _page = page;
    });
  }
}
