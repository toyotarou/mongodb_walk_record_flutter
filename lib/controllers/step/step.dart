import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/http/client.dart';
import '../../extensions/extensions.dart';
import '../../models/step_model.dart';
import '../../utility/utility.dart';

part 'step.freezed.dart';

part 'step.g.dart';

@freezed
class StepState with _$StepState {
  const factory StepState({
    @Default(<StepModel>[]) List<StepModel> stepList,
    @Default(<String, StepModel>{}) Map<String, StepModel> stepMap,
  }) = _StepState;
}

@riverpod
class Step extends _$Step {
  final Utility utility = Utility();

  ///
  @override
  StepState build() => const StepState();

  ///
  Future<void> getAllSteps() async {
    final HttpClient client = ref.read(httpClientProvider);

    // ignore: always_specify_types
    await client.get(path: 'steps').then((value) {
      final List<StepModel> list = <StepModel>[];

      final Map<String, StepModel> map = <String, StepModel>{};

      // ignore: avoid_dynamic_calls
      for (int i = 0; i < value.length.toString().toInt(); i++) {
        // ignore: avoid_dynamic_calls
        final StepModel val = StepModel.fromJson(value[i] as Map<String, dynamic>);

        list.add(val);

        map[val.date.yyyymmdd] = val;
      }

      state = state.copyWith(stepList: list, stepMap: map);
      // ignore: always_specify_types
    }).catchError((error, _) {
      utility.showError('予期せぬエラーが発生しました');
    });
  }
}
