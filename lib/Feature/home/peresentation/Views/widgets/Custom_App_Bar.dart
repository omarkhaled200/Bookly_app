
import 'package:bookly_app/Core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:  8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsDate.logo,
            height: 16,
          ),
          IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.magnifyingGlass,size: 18,))
        ],
      ),
    );
  }
}
