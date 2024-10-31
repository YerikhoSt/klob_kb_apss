import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:photo_view/photo_view.dart';

@RoutePage()
class PhotoDetailPage extends StatefulWidget {
  const PhotoDetailPage({
    super.key,
    required this.photoUrl,
    this.pageTitle,
  });

  final String photoUrl;
  final String? pageTitle;

  @override
  State<PhotoDetailPage> createState() => _PhotoDetailPageState();
}

class _PhotoDetailPageState extends State<PhotoDetailPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: widget.pageTitle ?? 'Detail Foto',
      ),
      body: Center(
        child: PhotoView(
          imageProvider: AssetImage(widget.photoUrl),
          backgroundDecoration: const BoxDecoration(color: Colors.white),
        ),
      ),
    );
  }
}
