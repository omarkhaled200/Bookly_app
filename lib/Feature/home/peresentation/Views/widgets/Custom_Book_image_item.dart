import 'package:bookly_app/Core/utlis/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImageitem extends StatelessWidget {
  const CustomBookImageitem({
    super.key, required this.imageurl,
  });
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            image: DecorationImage(
              image: NetworkImage(imageurl),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
