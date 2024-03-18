import 'package:flutter/material.dart';

class InteractiveViewerScreen extends StatefulWidget {
  const InteractiveViewerScreen({Key? key}) : super(key: key);

  @override
  State<InteractiveViewerScreen> createState() => _InteractiveViewerScreenState();
}

class _InteractiveViewerScreenState extends State<InteractiveViewerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ClipRRect(
        child: InteractiveViewer(
          scaleEnabled: true,
          maxScale: 10,
          minScale: 2,
          boundaryMargin: EdgeInsets.all(10), // all size padding
          child: Image.network("https://images.creativefabrica.com/products/previews/2023/11/09/zes4p8c3b/2Xwm1frmTaaX3nPTmJKJZij1kXY-mobile.jpg"),
        ),
      ),
    );
  }
}
