import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends GetxController {
  File? _storedImage;

  Future<void> takePicture() async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 600,
    );
    if (imageFile == null) {
      return;
    }
    _storedImage = File(imageFile.path);
    update();
  }

  File get storedImage {
    return _storedImage!;
  }
}
