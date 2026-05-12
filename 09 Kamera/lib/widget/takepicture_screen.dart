import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'displaypicture_screen.dart';

// A screen that allows users to take a picture using a given camera.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Take a picture - 244107060016'),
      ),

      // Menampilkan preview kamera
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {

          // Jika kamera selesai diinisialisasi
          if (snapshot.connectionState == ConnectionState.done) {

            // Tampilkan preview kamera
            return CameraPreview(_controller);

          } else {

            // Jika masih loading
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),

      // Tombol untuk mengambil foto
      floatingActionButton: FloatingActionButton(

        // Ketika tombol ditekan
        onPressed: () async {

          // Take the Picture in a try / catch block.
          try {

            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            // Attempt to take a picture and get the file image
            final image = await _controller.takePicture();

            if (!context.mounted) return;

            // Menampilkan hasil foto ke halaman baru
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(
                  imagePath: image.path,
                ),
              ),
            );

          } catch (e) {

            // Menampilkan error pada console
            print(e);
          }
        },

        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}