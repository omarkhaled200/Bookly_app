
import 'package:bookly_app/Core/utlis/Styles.dart';
import 'package:bookly_app/Feature/home/peresentation/Views/widgets/Book_Rating.dart';
import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class skeletonizerNewestBooks extends StatelessWidget {
  const skeletonizerNewestBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Skeletonizer(
          effect: const ShimmerEffect(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            highlightColor: Colors.greenAccent,
          ),
          child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                              ),
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                  'assets/images/test_image.jpg'),
                            ),
                          )),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 0.5,
                              child: Text(
                                'omar khaled mahmoud',
                                style: Styles.textStyle18
                                    .copyWith(fontFamily: kSectraFine),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              'omar khaled ',
                              style: Styles.textStyle14.copyWith(),
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Free',
                                  style: Styles.textStyle16.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                            const    BookRating(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
