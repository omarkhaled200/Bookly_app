import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchViewTextField extends StatelessWidget {
  const CustomSearchViewTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18,
          ),
        ),
        hintText: 'Search',
        enabledBorder: BuildOutlineInputBorder(),
        focusedBorder: BuildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder BuildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
