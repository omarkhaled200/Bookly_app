import 'package:bookly_app/Core/Widgets/Custom_Button.dart';
import 'package:bookly_app/Core/utlis/Functions/Custom_lunch_url.dart';
import 'package:bookly_app/Feature/home/data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundcolor: Colors.white,
              textColor: Colors.black,
              text: 'Free',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onpressed: () async {
                customlunchurl(context, bookModel.volumeInfo!.previewLink);
              },
              backgroundcolor: const Color(0xffEC8261),
              textColor: Colors.white,
              text: gettext(bookModel),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              fontsize: 16,
            ),
          ),
        ],
      ),
    );
  }

  String gettext(BookModel bookmodel) {
    if (bookmodel.volumeInfo!.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
