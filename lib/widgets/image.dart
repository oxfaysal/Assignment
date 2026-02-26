import 'package:flutter/cupertino.dart';

class galleryImage extends StatelessWidget {

  final String imageUrl;
  final double height;

  const galleryImage({super.key, required this.imageUrl, required this.height});

  @override
  Widget build(BuildContext context) {
   return Padding(
       padding: EdgeInsets.only(bottom: 10),
       child: Image.network(imageUrl, height: height, width: double.infinity, fit: BoxFit.cover,));
  }

}