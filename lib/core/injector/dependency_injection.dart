import 'package:alpa/feature/dashboard/domain/usecase/dashboard_usecase.dart';
import 'package:alpa/feature/home/data/repository/home_repository.dart';
import 'package:alpa/feature/home/data/source/home_data_service.dart';
import 'package:alpa/feature/home/domain/usecase/home_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void serviceLocatorIntializer() {
  getIt.registerFactory(() => HomeApiService());
  getIt.registerFactory(() => HomeRepository(homeApiService: getIt()));
  getIt.registerLazySingleton(() => DashboardUsecase());
  getIt.registerLazySingleton(() => HomeUseCase());
}
