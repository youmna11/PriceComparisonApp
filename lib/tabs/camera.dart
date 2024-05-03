import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'dart:io';


class CameraTab extends StatefulWidget {
  const CameraTab({Key? key}) : super(key: key);

  @override
  State<CameraTab> createState() => _CameraTabState();
}

class _CameraTabState extends State<CameraTab> {
  Uint8List? _image;
  File? selectedIMage;

  _showOption(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
            title: Text(
              "Make a choice",
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.image),
                    title: Text("Gallery"),
                    onTap: () => _pickImageFromGallery(),
                  ),
                  ListTile(
                    leading: Icon(Icons.camera_alt_outlined),
                    title: Text("Camera"),
                    onTap: () => _pickImageFromCamera(),
                  ),
                ],
              ),
            )));
  }

  // Future _imageFromGallery(BuildContext context) async {
  //   File? image;
  //   imageFile =
  //       await ImagePicker().pickImage(source: ImageSource.gallery) as File;
  //   Uint8List _bytes = await imageFile!.readAsBytes();
  //   String base64Image = base64.encode(_bytes);
  //   setState(() {
  //     imageFile = image;
  //   });
  //   Navigator.of(context).pop(); //close the model sheet
  // }
  //
  // Future _imageFromCamera(BuildContext context) async {
  //   File? image;
  //   imageFile =
  //       await ImagePicker().pickImage(source: ImageSource.camera) as File;
  //   setState(() {
  //     imageFile = image;
  //   });
  //   Navigator.of(context).pop(); //close the model sheet
  //
  // }

  //Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop(); //close the model sheet
  }

//Camera
  Future _pickImageFromCamera() async {
    final returnImage =
    await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: AppColors.lightGreen,
          toolbarHeight: 72,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Camera',
                style: GoogleFonts.playfairDisplay(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20
                )),
          ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)
            )
        ),

      ),
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 10,
                    left: 5
                ),
                child: Container(
                  height: 610,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.lightGreen
                      ),
                    color: Colors.white
                  ),
                  child: _image == null
                      ? Container()
                      : Image.memory(_image!,
                    fit: BoxFit.fill,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 320
                ),
                child: FloatingActionButton(
                  shape: CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0.0, bottom: 0),
                    child: Icon(Icons.camera_alt_rounded,
                        color: AppColors.lightGreen, size: 22),
                  ),
                  backgroundColor: AppColors.blue,
                  tooltip: 'Increment',
                  onPressed: () => _showOption(context),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
