import 'package:flutter/cupertino.dart';

import '../Constants/Colors.dart';

class QRCodeScannerScreen extends StatefulWidget {
  const QRCodeScannerScreen({Key? key}) : super(key: key);

  @override
  State<QRCodeScannerScreen> createState() => _QRCodeScannerScreenState();
}

class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
          'QRCodeScannerScreen',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: colors().black
          )
      ),
    );
  }
}

