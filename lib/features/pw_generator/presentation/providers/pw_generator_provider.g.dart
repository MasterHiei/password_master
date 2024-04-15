// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pw_generator_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pwGeneratorHash() => r'ef9f8b7d8aa86aac4c214855f6c367afbc7c61b8';

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

/// See also [pwGenerator].
@ProviderFor(pwGenerator)
const pwGeneratorProvider = PwGeneratorFamily();

/// See also [pwGenerator].
class PwGeneratorFamily extends Family<List<String>> {
  /// See also [pwGenerator].
  const PwGeneratorFamily();

  /// See also [pwGenerator].
  PwGeneratorProvider call({
    int? seed,
  }) {
    return PwGeneratorProvider(
      seed: seed,
    );
  }

  @override
  PwGeneratorProvider getProviderOverride(
    covariant PwGeneratorProvider provider,
  ) {
    return call(
      seed: provider.seed,
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
  String? get name => r'pwGeneratorProvider';
}

/// See also [pwGenerator].
class PwGeneratorProvider extends AutoDisposeProvider<List<String>> {
  /// See also [pwGenerator].
  PwGeneratorProvider({
    int? seed,
  }) : this._internal(
          (ref) => pwGenerator(
            ref as PwGeneratorRef,
            seed: seed,
          ),
          from: pwGeneratorProvider,
          name: r'pwGeneratorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pwGeneratorHash,
          dependencies: PwGeneratorFamily._dependencies,
          allTransitiveDependencies:
              PwGeneratorFamily._allTransitiveDependencies,
          seed: seed,
        );

  PwGeneratorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.seed,
  }) : super.internal();

  final int? seed;

  @override
  Override overrideWith(
    List<String> Function(PwGeneratorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PwGeneratorProvider._internal(
        (ref) => create(ref as PwGeneratorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        seed: seed,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<String>> createElement() {
    return _PwGeneratorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PwGeneratorProvider && other.seed == seed;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, seed.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PwGeneratorRef on AutoDisposeProviderRef<List<String>> {
  /// The parameter `seed` of this provider.
  int? get seed;
}

class _PwGeneratorProviderElement
    extends AutoDisposeProviderElement<List<String>> with PwGeneratorRef {
  _PwGeneratorProviderElement(super.provider);

  @override
  int? get seed => (origin as PwGeneratorProvider).seed;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
