import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .2,
          ),
          child: const BookItem(imageUrl:'https://th.bing.com/th/id/OIP.XVyxmyS4jvmZuXpluVHNzgHaL7?rs=1&pid=ImgDetMain' ,),
        ),
        const SizedBox(
          height: 46,
        ),
        SizedBox(
          width: width * .5,
          child: Text(
            'Harry Potter and the Goblet of Fire ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.lora(textStyle: Styles.textStyle20),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'J.K. Rowling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(),
        const SizedBox(
          height: 18,
        ),
        const BooksAction(),
      ],
    );
  }
}
