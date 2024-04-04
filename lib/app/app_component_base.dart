import 'package:codeland_demo/constants/constants.dart';

class AppComponentBase extends AppComponentBaseRepository {

  static final AppComponentBase shared = AppComponentBase._internal();

  factory AppComponentBase() {
    return shared;
  }

  AppComponentBase._internal();

  NetworkManager networkManager = NetworkManager();

  StreamController<bool> progressDialogStreamController = StreamController.broadcast();

  Stream<bool?> get progressDialogStream => progressDialogStreamController.stream;

  var isNetConnected = false.obs;

  init() async {
    await networkManager.initialiseNetworkManager();
  }

  showProgressDialog(bool value) {
    progressDialogStreamController.sink.add(value);
  }

  dispose() {
    progressDialogStreamController.close();
    networkManager.disposeStream();
  }

  @override
  NetworkManager getNetworkManager() {
    return networkManager;
  }

  isConnected() async {
    isNetConnected.value = await getNetworkManager().isConnected() ?? false;
  }
}

abstract class AppComponentBaseRepository {
  NetworkManager getNetworkManager();
}
