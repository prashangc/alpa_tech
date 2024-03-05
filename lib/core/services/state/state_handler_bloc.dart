import 'dart:async';

class StateHandlerBloc {
  final StreamController<dynamic> _stateStreamController =
      StreamController<dynamic>.broadcast();

  StreamSink<dynamic> get stateSink => _stateStreamController.sink;

  Stream<dynamic> get stateStream => _stateStreamController.stream;

  storeData({required dynamic data}) async {
    try {
      stateSink.add(data);
    } catch (e) {
      stateSink.addError(e);
    }
  }
}
