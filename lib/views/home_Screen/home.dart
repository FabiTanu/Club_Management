import 'package:club_management_flutter/consts/consts.dart';
import 'package:club_management_flutter/controllers/home_controller.dart';
import 'package:club_management_flutter/views/category_screen/category_screen.dart';
import 'package:club_management_flutter/views/category_screen/category_screen2.dart';
import 'package:club_management_flutter/views/home_Screen/home_screen.dart';
import 'package:club_management_flutter/views/profile_screen/profile_screen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //init home controller
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen2(),

      const ProfileScreen(),

      // Container(
      //   color: Colors.blue,
      // ),
      // Container(
      //   color: Colors.amber,
      // ),
      // Container(
      //   color: Colors.purple,
      // ),
      // Container(
      //   color: Colors.cyan,
      // ),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value)))
        ],
      ),
      //bottomNavigationBar: BottomNavigationBar(items: navbarItem),

      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
          // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
          onTap: (Value) {
            controller.currentNavIndex.value = Value;
          },
        ),
      ),
    );
  }
}
