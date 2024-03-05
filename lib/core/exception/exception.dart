class Failure implements Exception {
  final String message;
  final int? statusCode;
  final Exception? exception;
  final StackTrace stackTrace;

  Failure(
      {this.exception,
      required this.message,
      this.stackTrace = StackTrace.empty,
      this.statusCode});

  @override
  String toString() {
    return 'Failure :- \nmessage: $message \nexception: $exception \nstackTrace: $stackTrace \nstatusCode: $statusCode';
  }
}
