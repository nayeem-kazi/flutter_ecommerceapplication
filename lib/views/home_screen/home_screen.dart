// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_ecommerceapplication/const/colors.dart';
// import 'package:flutter_ecommerceapplication/const/consts.dart';
//
// import 'package:get/get.dart';
//
// import '../../controllers/home_controller.dart';
//
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const HomeScreen());
// }
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     // init home controller
//     var controller = Get.put(HomeController());
//     var navbarItem = [
//       BottomNavigationBarItem(icon: Image.asset(icHome, width: 26),label: home),
//       BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26),label: categories),
//       BottomNavigationBarItem(icon: Image.asset(icCart, width: 26),label: cart),
//       BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26),label: account),
//     ];
//     var navBody = [
//       Container(color: Colors.blue),
//       Container(color: Colors.amber),
//       Container(color: Colors.purple),
//       Container(color: Colors.cyan),
//     ];
//     return Scaffold(
//       body: Column(
//         children: [
//           Obx(() => Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
//         ],
//       ),
//       bottomNavigationBar: Obx(()=>
//           BottomNavigationBar(
//               currentIndex: controller.currentNavIndex.value,
//               selectedItemColor: redColor,
//               selectedLabelStyle: TextStyle(fontFamily: semibold),
//               type: BottomNavigationBarType.fixed,
//               backgroundColor: whiteColor,
//               items: navbarItem,
//               onTap: (value){
//                 controller.currentNavIndex.value = value;
//               }
//           ),
//       ),
//     );
//   }
// }
//
//
//
//
//
