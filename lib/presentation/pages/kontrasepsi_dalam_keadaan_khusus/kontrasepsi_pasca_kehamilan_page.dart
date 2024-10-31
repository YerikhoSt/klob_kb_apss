import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';
import 'package:photo_view/photo_view.dart';

@RoutePage()
class KontrasepsiPascaKehamilanPage extends StatefulWidget {
  const KontrasepsiPascaKehamilanPage({super.key});

  @override
  State<KontrasepsiPascaKehamilanPage> createState() =>
      _KontrasepsiPascaKehamilanPageState();
}

class _KontrasepsiPascaKehamilanPageState
    extends State<KontrasepsiPascaKehamilanPage> {
  final PhotoViewController _controller = PhotoViewController();
  final double _initialRotation = 3.14159 / 2;

  @override
  void initState() {
    super.initState();
    _controller.rotation = _initialRotation;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: PhotoView(
        imageProvider: const AssetImage(
          AppIcons.imgKontrasepsiPascaKehamilan,
        ),
        controller: _controller,
        minScale: PhotoViewComputedScale.covered * 0.5,
        backgroundDecoration: const BoxDecoration(color: Colors.white),
      ),
    ));
  }
}
