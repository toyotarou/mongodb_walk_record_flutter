// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StepState {
  List<StepModel> get stepList => throw _privateConstructorUsedError;
  Map<String, StepModel> get stepMap => throw _privateConstructorUsedError;

  /// Create a copy of StepState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepStateCopyWith<StepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepStateCopyWith<$Res> {
  factory $StepStateCopyWith(StepState value, $Res Function(StepState) then) =
      _$StepStateCopyWithImpl<$Res, StepState>;
  @useResult
  $Res call({List<StepModel> stepList, Map<String, StepModel> stepMap});
}

/// @nodoc
class _$StepStateCopyWithImpl<$Res, $Val extends StepState>
    implements $StepStateCopyWith<$Res> {
  _$StepStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepState
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
abstract class _$$StepStateImplCopyWith<$Res>
    implements $StepStateCopyWith<$Res> {
  factory _$$StepStateImplCopyWith(
          _$StepStateImpl value, $Res Function(_$StepStateImpl) then) =
      __$$StepStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StepModel> stepList, Map<String, StepModel> stepMap});
}

/// @nodoc
class __$$StepStateImplCopyWithImpl<$Res>
    extends _$StepStateCopyWithImpl<$Res, _$StepStateImpl>
    implements _$$StepStateImplCopyWith<$Res> {
  __$$StepStateImplCopyWithImpl(
      _$StepStateImpl _value, $Res Function(_$StepStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StepState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepList = null,
    Object? stepMap = null,
  }) {
    return _then(_$StepStateImpl(
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

class _$StepStateImpl implements _StepState {
  const _$StepStateImpl(
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
    return 'StepState(stepList: $stepList, stepMap: $stepMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepStateImpl &&
            const DeepCollectionEquality().equals(other._stepList, _stepList) &&
            const DeepCollectionEquality().equals(other._stepMap, _stepMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stepList),
      const DeepCollectionEquality().hash(_stepMap));

  /// Create a copy of StepState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepStateImplCopyWith<_$StepStateImpl> get copyWith =>
      __$$StepStateImplCopyWithImpl<_$StepStateImpl>(this, _$identity);
}

abstract class _StepState implements StepState {
  const factory _StepState(
      {final List<StepModel> stepList,
      final Map<String, StepModel> stepMap}) = _$StepStateImpl;

  @override
  List<StepModel> get stepList;
  @override
  Map<String, StepModel> get stepMap;

  /// Create a copy of StepState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepStateImplCopyWith<_$StepStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
