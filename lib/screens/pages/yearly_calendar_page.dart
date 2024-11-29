import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extensions/extensions.dart';
import '../../models/step_model.dart';

class YearlyCalendarPage extends ConsumerStatefulWidget {
  const YearlyCalendarPage({super.key, required this.date, required this.stepMap});

  final DateTime date;
  final Map<String, StepModel> stepMap;

  @override
  ConsumerState<YearlyCalendarPage> createState() => _YearlyCalendarPageState();
}

class _YearlyCalendarPageState extends ConsumerState<YearlyCalendarPage> {
  DateTime yearFirst = DateTime.now();

  List<String> youbiList = <String>['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

  List<String> days = <String>[];

  List<GlobalKey> globalKeyList = <GlobalKey<State<StatefulWidget>>>[];

  late BuildContext _context;

  ///
  @override
  Widget build(BuildContext context) {
    _context = context;

    // ignore: always_specify_types
    globalKeyList = List.generate(100, (int index) => GlobalKey());

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (widget.date.year == DateTime.now().year) {
        final int diffDays = DateTime.now().difference(DateTime(DateTime.now().year)).inDays;
        final int index = (diffDays / 7).floor();

        final BuildContext target = globalKeyList[index].currentContext!;

        await Scrollable.ensureVisible(
          target,
          duration: const Duration(milliseconds: 1000),
        );
      }
    });

    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Container(width: context.screenSize.width),
              Expanded(child: _getCalendar()),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  ///
  Widget _getCalendar() {
    yearFirst = DateTime(widget.date.yyyy.toInt());

    final DateTime yearEnd = DateTime(yearFirst.year + 1, 1, 0);

    final int diff = yearEnd.difference(yearFirst).inDays;
    final int yearDaysNum = diff + 1;

    final String youbi = yearFirst.youbiStr;
    final int youbiNum = youbiList.indexWhere((String element) => element == youbi);

    final int weekNum = ((yearDaysNum + youbiNum) / 7).ceil();

    // ignore: always_specify_types
    days = List.generate(weekNum * 7, (int index) => '');

    for (int i = 0; i < (weekNum * 7); i++) {
      if (i >= youbiNum) {
        final DateTime gendate = yearFirst.add(Duration(days: i - youbiNum));

        if (yearFirst.year == gendate.year) {
          days[i] = gendate.mmdd;
        }
      }
    }

    final List<Widget> list = <Widget>[];
    for (int i = 0; i < weekNum; i++) {
      list.add(_getRow(days: days, rowNum: i));
    }

    return SingleChildScrollView(child: Column(children: list));
  }

  ///
  Widget _getRow({required List<String> days, required int rowNum}) {
    final List<Widget> list = <Widget>[];

    for (int i = rowNum * 7; i < ((rowNum + 1) * 7); i++) {
      final List<String> exDays = (days[i] == '') ? <String>[] : days[i].split('-');

      list.add(
        Expanded(
          child: (days[i] == '')
              ? Container()
              : GestureDetector(
                  onTap: () async {
                    // await LifetimeDialog(
                    //   context: _context,
                    //   widget: LifetimeRecordDisplayAlert(
                    //     date: DateTime.parse(
                    //       '${widget.date.yyyy}-${days[i]} 00:00:00',
                    //     ),
                    //   ),
                    //   clearBarrierColor: true,
                    // );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(border: _getBorder(mmdd: days[i])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(minHeight: _context.screenSize.height / 40),
                          child: Text(
                            (exDays[1] == '01') ? exDays[0] : days[i],
                            style: TextStyle(
                              fontSize: (exDays[1] == '01') ? 12 : 8,
                              color: (exDays[1] == '01') ? const Color(0xFFFBB6CE) : Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(),
                            Text((widget.stepMap['${widget.date.year}-${days[i]}'] != null)
                                ? widget.stepMap['${widget.date.year}-${days[i]}']!.step.toString()
                                : ''),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(),
                            Text((widget.stepMap['${widget.date.year}-${days[i]}'] != null)
                                ? widget.stepMap['${widget.date.year}-${days[i]}']!.distance.toString()
                                : ''),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _dispRowNum(mmdd: days[i], rowNum: rowNum),
                            Container(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      );
    }

    return Row(
      key: globalKeyList[rowNum],
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list,
    );
  }

  ///
  Border _getBorder({required String mmdd}) {
    final DateTime genDate = DateTime.parse('${widget.date.yyyy}-$mmdd');

    return (genDate.yyyymmdd == DateTime.now().yyyymmdd)
        ? Border.all(color: Colors.orangeAccent.withOpacity(0.4), width: 2)
        : Border.all(color: Colors.white.withOpacity(0.2), width: 2);
  }

  ///
  Widget _dispRowNum({required String mmdd, required int rowNum}) {
    final DateTime genDate = DateTime.parse('${widget.date.yyyy}-$mmdd');

    return Text(
      (genDate.youbiStr == 'Sunday') ? (rowNum + 1).toString() : '',
      style: TextStyle(
        fontSize: 10,
        color: (genDate.youbiStr == 'Sunday') ? Colors.white.withOpacity(0.6) : Colors.transparent,
      ),
    );
  }
}
