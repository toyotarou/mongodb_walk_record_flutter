// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year_step.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$yearStepHash() => r'6d590f5438ab450f266bed572b79f085f2166631';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [yearStep].
@ProviderFor(yearStep)
const yearStepProvider = YearStepFamily();

/// See also [yearStep].
class YearStepFamily extends Family<AsyncValue<YearStepState>> {
  /// See also [yearStep].
  const YearStepFamily();

  /// See also [yearStep].
  YearStepProvider call({
    required int year,
  }) {
    return YearStepProvider(
      year: year,
    );
  }

  @override
  YearStepProvider getProviderOverride(
    covariant YearStepProvider provider,
  ) {
    return call(
      year: provider.year,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'yearStepProvider';
}

/// See also [yearStep].
class YearStepProvider extends AutoDisposeFutureProvider<YearStepState> {
  /// See also [yearStep].
  YearStepProvider({
    required int year,
  }) : this._internal(
          (ref) => yearStep(
            ref as YearStepRef,
            year: year,
          ),
          from: yearStepProvider,
          name: r'yearStepProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$yearStepHash,
          dependencies: YearStepFamily._dependencies,
          allTransitiveDependencies: YearStepFamily._allTransitiveDependencies,
          year: year,
        );

  YearStepProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.year,
  }) : super.internal();

  final int year;

  @override
  Override overrideWith(
    FutureOr<YearStepState> Function(YearStepRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: YearStepProvider._internal(
        (ref) => create(ref as YearStepRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        year: year,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<YearStepState> createElement() {
    return _YearStepProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is YearStepProvider && other.year == year;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, year.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin YearStepRef on AutoDisposeFutureProviderRef<YearStepState> {
  /// The parameter `year` of this provider.
  int get year;
}

class _YearStepProviderElement
    extends AutoDisposeFutureProviderElement<YearStepState> with YearStepRef {
  _YearStepProviderElement(super.provider);

  @override
  int get year => (origin as YearStepProvider).year;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
