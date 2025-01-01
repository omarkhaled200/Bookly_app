import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:bookly_app/Core/utlis/assets.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_App_Bar.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            Featuredlistview(),
            SizedBox(
              height: 35,
            ),
            Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
            BestSellerlistViewitem(),
          ],
        ),
      ),
    );
  }
}

class BestSellerlistViewitem extends StatelessWidget {
  const BestSellerlistViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BestSellerlistviewitemImage(),
      ],
    );
  }
}



class BestSellerlistviewitemImage extends StatelessWidget {
  const BestSellerlistviewitemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(AssetsDate.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
