// generated by diplomat-tool

part of 'lib.g.dart';

final class _LocaleFallbackConfigFfi extends ffi.Struct {
  @ffi.Int32()
  external int priority;
}

/// Collection of configurations for the ICU4X fallback algorithm.
///
/// See the [Rust documentation for `LocaleFallbackConfig`](https://docs.rs/icu/latest/icu/locale/fallback/struct.LocaleFallbackConfig.html) for more information.
final class LocaleFallbackConfig {
  LocaleFallbackPriority priority;

  LocaleFallbackConfig({required this.priority});

  // This struct contains borrowed fields, so this takes in a list of
  // "edges" corresponding to where each lifetime's data may have been borrowed from
  // and passes it down to individual fields containing the borrow.
  // This method does not attempt to handle any dependencies between lifetimes, the caller
  // should handle this when constructing edge arrays.
  // ignore: unused_element
  LocaleFallbackConfig._fromFfi(_LocaleFallbackConfigFfi ffi) :
    priority = LocaleFallbackPriority.values[ffi.priority];

  // ignore: unused_element
  _LocaleFallbackConfigFfi _toFfi(ffi.Allocator temp) {
    final struct = ffi.Struct.create<_LocaleFallbackConfigFfi>();
    struct.priority = priority.index;
    return struct;
  }

  @override
  bool operator ==(Object other) =>
      other is LocaleFallbackConfig &&
      other.priority == priority;

  @override
  int get hashCode => Object.hashAll([
        priority,
      ]);
}
