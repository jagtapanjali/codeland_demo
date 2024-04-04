import 'package:codeland_demo/constants/constants.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class UploadImageScreenController extends GetxController {
  static final UploadImageScreenController shared =
      UploadImageScreenController._internal();
  PermissionStatus? _permissionStatus;
  var imageFile = PlatformFile(name: '',size: 0).obs;
  var isImageView = false.obs;

  factory UploadImageScreenController() {
    return shared;
  }

  UploadImageScreenController._internal();

  Future<void> pickImage() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );
      if (result == null) return;
      imageFile.value = result.files.first;
    } catch (e) {
      Utility.showSnackBar(
          e.toString());
    }
  }

  Future<bool> checkStoragePermission() async {
    _permissionStatus = await Permission.storage.status;
    if (_permissionStatus != PermissionStatus.granted) {
      PermissionStatus permissionStatus = await Permission.storage.request();
      _permissionStatus = permissionStatus;
      if (_permissionStatus == PermissionStatus.granted) {
        return true;
      }
    } else if (_permissionStatus == PermissionStatus.granted) {
      return true;
    }
    return false;
  }

}
