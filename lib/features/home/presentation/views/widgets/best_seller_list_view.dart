import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 8),
                  child: BestSellerListViewItem(bookModel: state.books[index],
                    
                  ),
                );
              });
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
