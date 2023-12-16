import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = false;
  File? _image;
  final ImagePicker _imagePicker = ImagePicker();
  bool _maskDetected = false;

  Future<void> _loadImage(ImageSource source) async {
    setState(() {
      _loading = true;
      _maskDetected = false; // Reset the mask detection flag
    });

    final pickedImage = await _imagePicker.pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
        _loading = false;
        // Implement mask verification logic here using the selected image '_image'
        _maskDetected = detectMask(_image!); // Function to detect if a mask is present
      });
    } else {
      setState(() {
        _loading = false;
      });
    }
  }

  // Replace this function with your actual mask detection logic
  bool detectMask(File image) {
    // Implement your logic here to detect if a mask is present in the image
    // For demonstration purposes, let's assume a simple logic:
    // If the file size is larger than 0, consider a mask present
    return image.lengthSync() > 0;
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mask Verification",
          style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff4facfe), Color(0xff00f2fe)]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.transparent,
              child: Image.asset("assets/images/mask2.jpg"),
            ),
            Container(
              child: Text(
                "Mask Verification System",
                style: GoogleFonts.robotoSlab(
                    fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepOrange),
              ),
            ),
            Container(
              child: Text(
                "Verify if a mask is worn",
                style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff4facfe)),
                    overlayColor: MaterialStateProperty.all(Colors.white70),
                    elevation: MaterialStateProperty.all(3),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: Text(
                    "Take Photo",
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  onPressed: () {
                    _loadImage(ImageSource.camera);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff4facfe)),
                    overlayColor: MaterialStateProperty.all(Colors.white70),
                    elevation: MaterialStateProperty.all(3),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: Text(
                    "Choose from Gallery",
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  onPressed: () {
                    _loadImage(ImageSource.gallery);
                  },
                ),
              ),
            ),
            if (_loading)
              CircularProgressIndicator()
            else if (_image != null)
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    child: Image.file(_image!),
                  ),
                  Text(
                    _maskDetected ? "Mask Present" : "No Mask Detected",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
