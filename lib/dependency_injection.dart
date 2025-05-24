import 'package:food_delivery_app/presentation/cubit/page_view_index_cubit/page_view_index_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => PageViewIndexCubit());
}
