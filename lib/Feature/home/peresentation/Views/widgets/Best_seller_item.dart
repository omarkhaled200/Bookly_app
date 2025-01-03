import 'package:bookly_app/Core/utlis/App_Routers.dart';
import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Best_Seller_item_image.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Rating.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerlistViewitem extends StatelessWidget {
  const BestSellerlistViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBookDitailsview);
      },
      child: Row(
        children: [
          const BestSellerlistviewitemImage(),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const BookRating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
