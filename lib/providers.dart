import 'package:alpa/core/injector/dependency_injection.dart';
import 'package:alpa/feature/home/data/repository/home_repository.dart';
import 'package:alpa/feature/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProviders {
  static get providers => [
        BlocProvider(
          create: (context) =>
              HomeBloc(homeRepository: getIt<HomeRepository>()),
        ),
      ];
}
