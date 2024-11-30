import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/http/client.dart';
import '../../extensions/extensions.dart';
import '../../models/step_model.dart';
import '../../utility/utility.dart';

part 'year_step.freezed.dart';

part 'year_step.g.dart';

@freezed
class YearStepState with _$YearStepState {
  const factory YearStepState({
    @Default(<StepModel>[]) List<StepModel> stepList,
    @Default(<String, StepModel>{}) Map<String, StepModel> stepMap,
  }) = _YearStepState;
}

@riverpod
Future<YearStepState> yearStep(YearStepRef ref, {required int year}) async {
  final Utility utility = Utility();

  final HttpClient client = ref.read(httpClientProvider);

  final List<StepModel> list = <StepModel>[];

  final Map<String, StepModel> map = <String, StepModel>{};

  // ignore: always_specify_types
  await client.get(path: 'steps/year/$year').then((value) {
    // ignore: avoid_dynamic_calls
    for (int i = 0; i < value.length.toString().toInt(); i++) {
      // ignore: avoid_dynamic_calls
      final StepModel val = StepModel.fromJson(value[i] as Map<String, dynamic>);

      list.add(val);

      map[val.date.yyyymmdd] = val;
    }

    // ignore: always_specify_types
  }).catchError((error, _) {
    utility.showError('予期せぬエラーが発生しました');
  });

  // ignore: always_specify_types
  return Future.value(YearStepState(stepList: list, stepMap: map));
}
