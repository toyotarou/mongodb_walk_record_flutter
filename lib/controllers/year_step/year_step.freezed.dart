// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YearStepState {
  List<StepModel> get stepList => throw _privateConstructorUsedError;
  Map<String, StepModel> get stepMap => throw _privateConstructorUsedError;

  /// Create a copy of YearStepState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YearStepStateCopyWith<YearStepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearStepStateCopyWith<$Res> {
  factory $YearStepStateCopyWith(
          YearStepState value, $Res Function(YearStepState) then) =
      _$YearStepStateCopyWithImpl<$Res, YearStepState>;
  @useResult
  $Res call({List<StepModel> stepList, Map<String, StepModel> stepMap});
}

/// @nodoc
class _$YearStepStateCopyWithImpl<$Res, $Val extends YearStepState>
    implements $YearStepStateCopyWith<$Res> {
  _$YearStepStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YearStepState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepList = null,
    Object? stepMap = null,
  }) {
    return _then(_value.copyWith(
      stepList: null == stepList
          ? _value.stepList
          : stepList // ignore: cast_nullable_to_non_nullable
              as List<StepModel>,
      stepMap: null == stepMap
          ? _value.stepMap
          : stepMap // ignore: cast_nullable_to_non_nullable
              as Map<String, StepModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YearStepStateImplCopyWith<$Res>
    implements $YearStepStateCopyWith<$Res> {
  factory _$$YearStepStateImplCopyWith(
          _$YearStepStateImpl value, $Res Function(_$YearStepStateImpl) then) =
      __$$YearStepStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StepModel> stepList, Map<String, StepModel> stepMap});
}

/// @nodoc
class __$$YearStepStateImplCopyWithImpl<$Res>
    extends _$YearStepStateCopyWithImpl<$Res, _$YearStepStateImpl>
    implements _$$YearStepStateImplCopyWith<$Res> {
  __$$YearStepStateImplCopyWithImpl(
      _$YearStepStateImpl _value, $Res Function(_$YearStepStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of YearStepState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepList = null,
    Object? stepMap = null,
  }) {
    return _then(_$YearStepStateImpl(
      stepList: null == stepList
          ? _value._stepList
          : stepList // ignore: cast_nullable_to_non_nullable
              as List<StepModel>,
      stepMap: null == stepMap
          ? _value._stepMap
          : stepMap // ignore: cast_nullable_to_non_nullable
              as Map<String, StepModel>,
    ));
  }
}

/// @nodoc

class _$YearStepStateImpl implements _YearStepState {
  const _$YearStepStateImpl(
      {final List<StepModel> stepList = const <StepModel>[],
      final Map<String, StepModel> stepMap = const <String, StepModel>{}})
      : _stepList = stepList,
        _stepMap = stepMap;

  final List<StepModel> _stepList;
  @override
  @JsonKey()
  List<StepModel> get stepList {
    if (_stepList is EqualUnmodifiableListView) return _stepList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stepList);
  }

  final Map<String, StepModel> _stepMap;
  @override
  @JsonKey()
  Map<String, StepModel> get stepMap {
    if (_stepMap is EqualUnmodifiableMapView) return _stepMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stepMap);
  }

  @override
  String toString() {
    return 'YearStepState(stepList: $stepList, stepMap: $stepMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearStepStateImpl &&
            const DeepCollectionEquality().equals(other._stepList, _stepList) &&
            const DeepCollectionEquality().equals(other._stepMap, _stepMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stepList),
      const DeepCollectionEquality().hash(_stepMap));

  /// Create a copy of YearStepState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YearStepStateImplCopyWith<_$YearStepStateImpl> get copyWith =>
      __$$YearStepStateImplCopyWithImpl<_$YearStepStateImpl>(this, _$identity);
}

abstract class _YearStepState implements YearStepState {
  const factory _YearStepState(
      {final List<StepModel> stepList,
      final Map<String, StepModel> stepMap}) = _$YearStepStateImpl;

  @override
  List<StepModel> get stepList;
  @override
  Map<String, StepModel> get stepMap;

  /// Create a copy of YearStepState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YearStepStateImplCopyWith<_$YearStepStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
