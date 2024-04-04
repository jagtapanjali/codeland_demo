import 'dart:io';
import 'package:codeland_demo/constants/constants.dart';

class NetworkManager {
  static final NetworkManager shared = NetworkManager._internal();
  NetworkManager._internal();

  factory NetworkManager() {
    return shared;
  }

  StreamController<bool?> internetConnectedStream = StreamController.broadcast();

  Stream<bool?> get internetConnectionValue => internetConnectedStream.stream;
  Connectivity connectivity = Connectivity();
  bool isInternetConnected = false;
  var isInternetStream = true.obs;

  initialiseNetworkManager() async {
    ConnectivityResult result = await connectivity.checkConnectivity();
    _checkStatus(result);
    connectivity.onConnectivityChanged.listen((result) {
      _checkStatus(result);
    });
  }

  Future<bool?> isConnected() async {
    ConnectivityResult result = await connectivity.checkConnectivity();
    return await _checkStatus(result);
  }

  Future<bool?> _checkStatus(ConnectivityResult result) async {
    bool? isInternet = false;
    switch (result) {
      case ConnectivityResult.wifi:
        isInternet = true;
        break;
      case ConnectivityResult.mobile:
        isInternet = true;
        break;
      case ConnectivityResult.ethernet:
        isInternet = true;
        break;
      case ConnectivityResult.none:
        isInternet = false;
        break;
      default:
        isInternet = false;
        break;
    }
    if (isInternet) isInternet = await _updateConnectionStatus();
    if (isInternetConnected != isInternet) {
      isInternetConnected = isInternet ?? false;
      internetConnectedStream.sink.add(isInternet);
    }
    isInternetStream.value = isInternet ?? false;

    // upload form details to server
    if (isInternetStream.value) {

    }
    return isInternet;
  }

  Future<bool?> _updateConnectionStatus() async {
    bool? isConnected;
    try {
      final List<InternetAddress> result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        isConnected = true;
      }
    } on SocketException catch (_) {
      isConnected = false;
      return false;
    }
    return isConnected;
  }

  disposeStream() {
    internetConnectedStream.close();
  }
}
