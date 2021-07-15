import 'package:flutter/material.dart';
import 'package:mytyrch/ui/design_info.dart';
import 'package:mytyrch/ui/gallery_view.dart';
import 'package:mytyrch/ui/pics_grid_view.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text('Gallery'),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                InfoDesign(
                  title: 'Gallery',
                  view: 'VIEW ALL',
                ),
                PicsGridView(),
                InfoDesign(
                  title: 'Gallery',
                  view: 'VIEW MODEL',
                ),
                GalleryView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
