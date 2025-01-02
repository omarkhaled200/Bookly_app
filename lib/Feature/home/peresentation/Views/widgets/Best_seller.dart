
import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:bookly_app/Core/utlis/assets.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';

class BestSellerlistViewitem extends StatelessWidget {
  const BestSellerlistViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BestSellerlistviewitemImage(),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                'Harry potter and the Goblet of Fire ',
                style: Styles.textStyle20.copyWith(fontFamily: kSectraFine),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'Omar khaled',
              style: Styles.textStyle14,
            ),
            Row(
              children: [
                Text(
                  '19.99 €',
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        )
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
