import 'dart:math';

import 'package:billdivide/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:image/image.dart' as image;
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_android/image_picker_android.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'package:provider/provider.dart';

class ImageEditor extends StatefulWidget {
  final Uint8List? initialImage;
  const ImageEditor({super.key, this.initialImage});

  @override
  State<ImageEditor> createState() => _ImageEditorState();
}

class _ImageEditorState extends State<ImageEditor> {
  (String, double?)? imageProgress;
  Uint8List? attachedImage;
  bool imagePickingLock = false;

  pickImage() async {
    var nav = Navigator.of(context);
    var client = await context.read<AppState>().client;
    imagePickingLock = true;
    try {
      final ImagePickerPlatform imagePickerImplementation =
          ImagePickerPlatform.instance;
      if (imagePickerImplementation is ImagePickerAndroid) {
        imagePickerImplementation.useAndroidPhotoPicker = true;
      }
      final ImagePicker picker = ImagePicker();
      final XFile? imageFile =
          await picker.pickImage(source: ImageSource.gallery);
      if (imageFile != null) {
        setState(() {
          imageProgress = ('Decoding Image', null);
        });
        final decodedImage = image.decodeImage(await imageFile.readAsBytes());
        if (decodedImage != null) {
          final avifImage = await resizeAndCompressToAvif(decodedImage, 1);
          setState(() {
            imageProgress = ('Retriving URL', null);
          });
          setState(() {
            attachedImage = avifImage;
          });
          // var result = await client.execute(
          //     GgetImageUploadUrlReq((b) => b.vars..size = avifImage.length));
          // var url = result.data?.uploadImage.presignedUrl;
          // if (url != null) {
          //   setState(() {
          //     imageProgress = ('Uploading Image', null);
          //   });
          //   await uploadImage(url, result.data!.uploadImage.id, avifImage);
          // }
        }
      }
    } finally {
      setState(() {
        imageProgress = null;
      });
      imagePickingLock = false;
    }
  }

  Future<Uint8List> resizeAndCompressToAvif(
      image.Image imageDecoded, int iteration) async {
    const maxRes = 1920;
    if (max(imageDecoded.width, imageDecoded.height) > maxRes) {
      if (imageDecoded.width > imageDecoded.height) {
        imageDecoded = image.copyResize(imageDecoded, width: maxRes);
      } else {
        imageDecoded = image.copyResize(imageDecoded, height: maxRes);
      }
    }
    setState(() {
      imageProgress = ('Converting Image #$iteration', null);
    });
    var avif = await encodeAvif(image.encodePng(imageDecoded));
    const maxSize = 1024 * 400;
    if (avif.length < maxSize) {
      return avif;
    } else {
      if (iteration >= 10) {
        throw "Too many iteration";
      }
      return resizeAndCompressToAvif(
        image.copyResize(imageDecoded,
            width: (imageDecoded.width * 0.9).toInt()),
        iteration + 1,
      );
    }
  }

  @override
  void initState() {
    attachedImage = widget.initialImage;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (attachedImage == null) {
        var nav = Navigator.of(context);
        await pickImage();
        if (attachedImage == null && mounted) {
          nav.pop();
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text('Add Image'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (attachedImage != null)
                Expanded(
                  child: InteractiveViewer(
                    child: AvifImage.memory(
                      attachedImage!,
                    ),
                  ),
                )
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.of(context).pop(attachedImage);
            },
            label: const Text('Confirm'),
            icon: const Icon(Icons.check),
          ),
          bottomNavigationBar: ButtonBar(
            children: [
              ElevatedButton.icon(
                onPressed: pickImage,
                icon: const Icon(Icons.edit),
                label: const Text('Change'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                icon: const Icon(Icons.delete),
                label: const Text('Cancel'),
              ),
            ],
          ),
        ),
        if (imageProgress != null)
          Positioned.fill(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.black54,
              ),
              child: Dialog(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        value: imageProgress?.$2,
                      ),
                      Text(
                        imageProgress!.$1,
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
