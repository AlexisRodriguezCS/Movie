import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  final int index;
  final List<String> images = <String>[
    "assets/images/ABugsLifeFull.jpeg",
    "assets/images/HalloweenKillsFull.jpg",
    "assets/images/FindingNemoFull.jpg",
    "assets/images/Incredibles2Full.jpg",
    "assets/images/ItChapterTwoFull.jpg",
    "assets/images/MonstersIncFull.jpg",
    "assets/images/TheDarkKnightRisesFull.jpg"
  ];
  ImageItem({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie App'),
      ),
      body: Image(
        image: AssetImage(images[index]),
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}