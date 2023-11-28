// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

/// An ICU4X word-break segmenter, capable of finding word breakpoints in strings.
///
/// See the [Rust documentation for `WordSegmenter`](https://docs.rs/icu/latest/icu/segmenter/struct.WordSegmenter.html) for more information.
final class WordSegmenter implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _underlying;

  WordSegmenter._(this._underlying) {
    _finalizer.attach(this, _underlying.cast());
  }

  static final _finalizer = ffi.NativeFinalizer(_capi('ICU4XWordSegmenter_destroy'));

  /// Construct an [`WordSegmenter`] with automatically selecting the best available LSTM
  /// or dictionary payload data.
  ///
  /// Note: currently, it uses dictionary for Chinese and Japanese, and LSTM for Burmese,
  /// Khmer, Lao, and Thai.
  ///
  /// See the [Rust documentation for `new_auto`](https://docs.rs/icu/latest/icu/segmenter/struct.WordSegmenter.html#method.new_auto) for more information.
  ///
  /// Throws [Error] on failure.
  factory WordSegmenter.auto(DataProvider provider) {
    final result = _ICU4XWordSegmenter_create_auto(provider._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return WordSegmenter._(result.union.ok);
  }

  // ignore: non_constant_identifier_names
  static final _ICU4XWordSegmenter_create_auto =
    _capi<ffi.NativeFunction<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>>('ICU4XWordSegmenter_create_auto')
      .asFunction<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true);

  /// Construct an [`WordSegmenter`] with LSTM payload data for Burmese, Khmer, Lao, and
  /// Thai.
  ///
  /// Warning: [`WordSegmenter`] created by this function doesn't handle Chinese or
  /// Japanese.
  ///
  /// See the [Rust documentation for `new_lstm`](https://docs.rs/icu/latest/icu/segmenter/struct.WordSegmenter.html#method.new_lstm) for more information.
  ///
  /// Throws [Error] on failure.
  factory WordSegmenter.lstm(DataProvider provider) {
    final result = _ICU4XWordSegmenter_create_lstm(provider._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return WordSegmenter._(result.union.ok);
  }

  // ignore: non_constant_identifier_names
  static final _ICU4XWordSegmenter_create_lstm =
    _capi<ffi.NativeFunction<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>>('ICU4XWordSegmenter_create_lstm')
      .asFunction<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true);

  /// Construct an [`WordSegmenter`] with dictionary payload data for Chinese, Japanese,
  /// Burmese, Khmer, Lao, and Thai.
  ///
  /// See the [Rust documentation for `new_dictionary`](https://docs.rs/icu/latest/icu/segmenter/struct.WordSegmenter.html#method.new_dictionary) for more information.
  ///
  /// Throws [Error] on failure.
  factory WordSegmenter.dictionary(DataProvider provider) {
    final result = _ICU4XWordSegmenter_create_dictionary(provider._underlying);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._underlying == result.union.err);
    }
    return WordSegmenter._(result.union.ok);
  }

  // ignore: non_constant_identifier_names
  static final _ICU4XWordSegmenter_create_dictionary =
    _capi<ffi.NativeFunction<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>>('ICU4XWordSegmenter_create_dictionary')
      .asFunction<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true);

  /// Segments a UTF-16 string.
  ///
  /// See the [Rust documentation for `segment_utf16`](https://docs.rs/icu/latest/icu/segmenter/struct.WordSegmenter.html#method.segment_utf16) for more information.
  WordBreakIteratorUtf16 segment(String input) {
    final temp = ffi2.Arena();
    final inputView = input.utf16View;;
    final result = _ICU4XWordSegmenter_segment_utf16(_underlying, inputView.pointer(temp), inputView.length);
    temp.releaseAll();
    return WordBreakIteratorUtf16._(result);
  }

  // ignore: non_constant_identifier_names
  static final _ICU4XWordSegmenter_segment_utf16 =
    _capi<ffi.NativeFunction<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint16>, ffi.Size)>>('ICU4XWordSegmenter_segment_utf16')
      .asFunction<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Uint16>, int)>(isLeaf: true);
}
