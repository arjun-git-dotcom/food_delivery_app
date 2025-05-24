import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/cubit/page_view_index_cubit/page_view_index_cubit.dart';
import 'package:food_delivery_app/presentation/pages/account.dart';
import 'package:food_delivery_app/presentation/pages/cart_page.dart';
import 'package:food_delivery_app/presentation/pages/homepage.dart';
import 'package:food_delivery_app/presentation/pages/my_orders_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController controller = PageController();
  
  navigationTap(int index) {
   context.read<PageViewIndexCubit>().changeIndex(index);
    controller.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<PageViewIndexCubit, int>(
        builder: (context, state) {
          
         return  CupertinoTabBar(
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
              currentIndex: state,
              onTap: navigationTap,
              items: [
                BottomNavigationBarItem(
                  icon: SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "lib/assets/images/home_icon.png",
                        color: state == 0 ? Colors.green : Colors.grey,
                      )),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          "lib/assets/images/cart_icon.png",
                          color: state == 1 ? Colors.green : Colors.grey,
                        )),
                    label: "Cart"),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "lib/assets/images/my_orders.png",
                        color: state == 2 ? Colors.green : Colors.grey,
                      ),
                    ),
                    label: "My Order"),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset("lib/assets/images/corrected_account.png",
                          color: state == 3 ? Colors.green : Colors.grey),
                    ),
                    label: "Account"),
              ]);
        },
      ),
      body: PageView(
        controller: controller,
        children: [Homepage(), CartPage(), MyOrdersPage(), Account()],
      ),
    );
  }
}
