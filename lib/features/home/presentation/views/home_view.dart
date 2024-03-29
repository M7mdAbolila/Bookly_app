import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/view%20model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchFeatureBooks(),
          ),
          BlocProvider(
            create: (context) => NewestBooksCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchNewestBooks(),
          ),
        ],
        child: const HomeViewBody(),
      ),
    );
  }
}
