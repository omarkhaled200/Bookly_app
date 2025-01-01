import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_App_Bar.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              Featuredlistview(),
            ],
          ),
        ),
      ),
    );
  }
}

