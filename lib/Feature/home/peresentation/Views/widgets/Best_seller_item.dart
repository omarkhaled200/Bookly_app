import 'package:bookly_app/Core/utlis/App_Routers.dart';
import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Best_Seller_item_image.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Rating.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Custom_Book_image_item.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBookDitailsview,extra: bookModel);
      },
      child: Row(
        children: [
         SizedBox( height: 100,child: CustomBookImageitem(imageurl:bookModel.volumeInfo!.imageLinks?.thumbnail ?? "" ,)),
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
                    bookModel.volumeInfo!.title!,
                    style: Styles.textStyle18.copyWith(fontFamily: kSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                 Text(
                  bookModel.volumeInfo!.authors![0],
                  style: Styles.textStyle14.copyWith(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     BookRating(),
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
