import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Detials_View_body.dart';
import 'package:flutter/material.dart';

class BookDetialsView extends StatelessWidget {
  const BookDetialsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: BookDetialsViewbody()));
  }
}

