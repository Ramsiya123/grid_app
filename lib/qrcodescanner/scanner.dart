import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:get/get.dart'; // if you're using Get for navigation
import 'path_to_custom_svg.dart'; // Import your custom SVG widget

class QRCodeScannerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QRCodeScannerWidgetState();
}

class _QRCodeScannerWidgetState extends State<QRCodeScannerWidget> {
  late final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          QRView(
            key: _qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton(
                onPressed: () => _controller.toggleFlash(),
                backgroundColor: Colors.blue,
                child: const Icon(Icons.flash_on),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      _controller = controller;
    });

    _controller.scannedDataStream.listen((scanData) {
      // Handle the scanned QR code data
      print('Scanned QR Code: $scanData');
      Get.toNamed(Routes.scanTime); // Navigate to the desired screen
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
