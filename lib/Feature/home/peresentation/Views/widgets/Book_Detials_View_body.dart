import 'package:flutter/material.dart';

class BookDetialsViewbody extends StatelessWidget {
  const BookDetialsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal:  30.0),
      child:  Column(
        children: [
          CustomBookDetialsAppBar(),
        ],
      ),
    );
  }
}

class CustomBookDetialsAppBar extends StatelessWidget {
  const CustomBookDetialsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
