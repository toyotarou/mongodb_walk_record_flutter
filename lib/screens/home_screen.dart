import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/step/step.dart';
import '../models/step_model.dart';
import 'pages/yearly_calendar_page.dart';

class TabInfo {
  TabInfo(this.label, this.widget);

  String label;
  Widget widget;
}

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  List<TabInfo> tabs = <TabInfo>[];

  ///
  @override
  void initState() {
    super.initState();

    ref.read(stepProvider.notifier).getAllSteps();
  }

  ///
  @override
  Widget build(BuildContext context) {
    makeTab();

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: Colors.transparent,
            //-------------------------//これを消すと「←」が出てくる（消さない）
            leading: const Icon(Icons.check_box_outline_blank, color: Colors.transparent),
            //-------------------------//これを消すと「←」が出てくる（消さない）

            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.blueAccent,
              tabs: tabs.map((TabInfo tab) => Tab(text: tab.label)).toList(),
            ),
          ),
        ),
        body: TabBarView(children: tabs.map((TabInfo tab) => tab.widget).toList()),
      ),
    );
  }

  ///
  void makeTab() {
    // ignore: always_specify_types
    final Map<String, StepModel> stepMap = ref.watch(stepProvider.select((value) => value.stepMap));

    tabs = <TabInfo>[];

    final List<int> list = <int>[];

    for (int i = 2023; i <= DateTime.now().year; i++) {
      list.add(i);
    }

    list
      ..sort((int a, int b) => -1 * a.compareTo(b))
      ..forEach((int element) {
        tabs.add(
          TabInfo(
            element.toString(),
            YearlyCalendarPage(date: DateTime(element), stepMap: stepMap),
          ),
        );
      });
  }
}
