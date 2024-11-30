import 'package:flutter/material.dart';

import 'pages/yearly_calendar_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pageList = <Widget>[];

  ///
  @override
  Widget build(BuildContext context) {
    makePageList();

    return Scaffold(body: SafeArea(child: PageView(children: pageList)));
  }

  ///
  void makePageList() {
    pageList = <Widget>[];

    final List<int> list = <int>[];

    for (int i = 2023; i <= DateTime.now().year; i++) {
      list.add(i);
    }

    list
      ..sort((int a, int b) => -1 * a.compareTo(b))
      ..forEach((int element) => pageList.add(YearlyCalendarPage(date: DateTime(element))));
  }
}
