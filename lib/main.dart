import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:three_dots_assignment/api/crypto_api.dart';
import 'package:three_dots_assignment/app.dart';
import 'package:three_dots_assignment/cubit/crypto_cubit.dart';
import 'package:three_dots_assignment/utils/constants.dart';

void main() {
  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider<CryptoAPIClient>(
        create: (context) => CryptoAPIClient(Dio()
          ..interceptors.add(PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseBody: true,
              responseHeader: false,
              error: true,
              compact: true,
              maxWidth: 90))),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CryptoListCubit(context.read<CryptoAPIClient>()),
      child: MaterialApp(
          title: 'ThreeDotsAssignment',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: kBackgroundColor,
              primaryColor: kPrimaryColor,
              textTheme:
                  Theme.of(context).textTheme.apply(bodyColor: kTextColor),
              visualDensity: VisualDensity.adaptivePlatformDensity),
          home: const ThreeDotsApp()),
    );
  }
}
