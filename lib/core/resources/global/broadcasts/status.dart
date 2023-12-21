import 'dart:async';

/// A singleton class that provides a stream of API error codes.
///
/// This class is responsible for emitting API error codes through a [Stream] of integers.
/// It follows the singleton design pattern to ensure that only one instance of the class exists.
/// The [ApiErrorStream] instance can be accessed using the factory constructor [ApiErrorStream()].
///
/// Example usage:
/// ```dart
/// ApiErrorStream().errorStream.listen((errorCode) {
///   // Handle the API error code
/// });
/// ```
class ApiErrorStream {
  static final ApiErrorStream _instance = ApiErrorStream._internal();

  factory ApiErrorStream() {
    return _instance;
  }

  ApiErrorStream._internal();

  final _errorStreamController = StreamController<int>.broadcast();

  /// The stream of API error codes.
  Stream<int> get errorStream => _errorStreamController.stream;

  /// Emits an API error code to the error stream.
  ///
  /// Only emits the error code if it is equal to 402.
  /// Set for Example Only You can add more of your codes.
  void emitError(int errorCode) {
    if (errorCode == 402) {
      _errorStreamController.add(errorCode);
    }
  }

  /// Closes the error stream controller.
  void dispose() {
    _errorStreamController.close();
  }
}
