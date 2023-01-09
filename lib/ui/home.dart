import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapplication/const/colors.dart';
import 'package:flutter_ecommerceapplication/const/consts.dart';
import 'package:get/get.dart';
import '../const/images.dart';
import '../const/strings.dart';
import '../controllers/home_controller.dart';
import '../views/cart_screen/cart_screen.dart';
import '../views/categories_screen/categories_screen.dart';
import '../views/profile_screen/profile_screen.dart';
import 'home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // init home controller
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26),label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26),label: account),
    ];
    var navBody = [
      HomeScreen(),
      CategoriesScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
           currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            items: navbarItem,
           onTap: (value){
             controller.currentNavIndex.value = value;
           }
        ),
      ),
    );
  }
}





