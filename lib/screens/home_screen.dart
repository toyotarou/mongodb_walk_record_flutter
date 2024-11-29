import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/step/step.dart';
import '../models/step_model.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  ///
  @override
  void initState() {
    super.initState();

    ref.read(stepProvider.notifier).getAllStep();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(child: displayStepList()),
        ],
      )),
    );
  }

  ///
  Widget displayStepList() {
    final List<Widget> list = <Widget>[];

    // ignore: always_specify_types
    ref.watch(stepProvider.select((value) => value.stepList)).forEach((StepModel element) {
      list.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('${element.date.year}-${element.date.month}-${element.date.day}'),
          Text(element.step.toString()),
          Text(element.distance.toString()),
        ],
      ));
    });

    return SingleChildScrollView(child: Column(children: list));
  }
}
