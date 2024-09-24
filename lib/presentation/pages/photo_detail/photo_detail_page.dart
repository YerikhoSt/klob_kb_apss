import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:klob_kb_apps/presentation/component/app_bar/app_bar.dart';
import 'package:photo_view/photo_view.dart';

@RoutePage()
class PhotoDetailPage extends StatelessWidget {
  const PhotoDetailPage({
    super.key,
    required this.photoUrl,
    this.pageTitle,
  });

  final String photoUrl;
  final String? pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: pageTitle ?? 'Detail Foto',
      ),
      body: Center(
        child: PhotoView(
          imageProvider: AssetImage(photoUrl),
          backgroundDecoration: const BoxDecoration(color: Colors.white),
        ),
      ),
    );
  }
}
