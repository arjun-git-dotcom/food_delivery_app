import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/on_generate_route.dart';
import 'package:food_delivery_app/presentation/cubit/notification_cubit/notification_cubit.dart';
import 'package:food_delivery_app/presentation/cubit/page_view_index_cubit/page_view_index_cubit.dart';
import 'package:food_delivery_app/presentation/pages/main_screen.dart';
import 'dependency_injection.dart' as di;

void main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => di.sl<PageViewIndexCubit>(),),BlocProvider(create: (_)=>di.sl<NotificationCubit>())],
      child: MaterialApp(
        initialRoute: "/",
        onGenerateRoute: OnGenerateRoute.route,
        routes: {
          "/": (context) {
            return MainScreen();
          }
        },
        debugShowCheckedModeBanner: false,
       
      ),
    );
  }
}
