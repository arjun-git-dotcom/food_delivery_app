import 'package:food_delivery_app/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:food_delivery_app/data/data_source/remote_data_source/remote_data_source_impl.dart';
import 'package:food_delivery_app/data/repository/repository_impl.dart';
import 'package:food_delivery_app/domain/repository/repostiory.dart';
import 'package:food_delivery_app/domain/usecases/notification_usecase.dart';
import 'package:food_delivery_app/presentation/cubit/notification_cubit/notification_cubit.dart';
import 'package:food_delivery_app/presentation/cubit/page_view_index_cubit/page_view_index_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => PageViewIndexCubit());
  sl.registerFactory(() => NotificationCubit(notificationUsecase: sl.call()));
  sl.registerLazySingleton(() => NotificationUsecase(repostiory: sl.call()));
  sl.registerLazySingleton<Repostiory>(() => RepositoryImpl(sl.call()));
  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());
}
