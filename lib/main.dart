import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:demo3/core/routing/app_routing.dart';
import 'package:demo3/features/names/data/datasources/name_data_source.dart';
import 'package:demo3/features/names/data/repositories/name_repository_impl.dart';
import 'package:demo3/features/names/domain/usecases/get_names_usecase.dart';
import 'package:demo3/features/names/presentation/bloc/departmentnames_bloc.dart';
import 'package:demo3/features/names/presentation/bloc/names_bloc.dart';
import 'package:demo3/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  final namesRepository = NameRepositoryImpl(dataSource: NameDataSource());
  final getNamesUseCase = GetNamesUsecase(repository: namesRepository);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NamesBloc(getNamesUseCase),
        ),
        BlocProvider(
          create: (context) => DepartmentnamesBloc(),
        ),
      ],
      child: App(
        connectivity: Connectivity(),
        route: AppRouting(),
      ),
    ),
  );
}

// ignore: must_be_immutable
class App extends StatelessWidget {
  App({super.key, required this.connectivity, required this.route});
  Connectivity connectivity;
  AppRouting route;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: route.onRouteGenerator,
    );
  }
}
