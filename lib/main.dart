import 'package:bookly_app_test/constants.dart';
import 'package:bookly_app_test/core/utils/api_service.dart';
import 'package:bookly_app_test/core/utils/app_router.dart';
import 'package:bookly_app_test/core/utils/simple_bloc_observer.dart';
import 'package:bookly_app_test/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app_test/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app_test/features/home/data/repositories/home_repo_impl.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_app_test/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookly_app_test/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app_test/features/home/presentation/manager/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        apiService: ApiService(
          dio: Dio(),
        ),
      ),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );

  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(booksFeaturedBoxName);
  await Hive.openBox(booksNewestBoxName);
  Bloc.observer = SimpleBlocObserver();
  
  runApp(const BooklyApp());
}

var getIt = GetIt.instance;

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                homeRepo: getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(
                homeRepo: getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: mainColor,
            textTheme: GoogleFonts.salsaTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
