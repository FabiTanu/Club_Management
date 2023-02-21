import 'package:club_management_flutter/consts/consts.dart';
import 'package:club_management_flutter/views/category_screen/Clubs/computerClub.dart';
import 'package:club_management_flutter/views/category_screen/Clubs/socialServiceClub.dart';
import 'package:club_management_flutter/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

import '../../consts/lists.dart';
import '../../controllers/home_controller.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controll = Get.put(HomeController());
    var probro = [const Category1(), const Category2()];
    return bkWidget(
        child: Scaffold(
      appBar: AppBar(
        title: categories.text.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 11,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                mainAxisExtent: 200),
            itemBuilder: (
              context,
              index,
            ) {
              return Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        25.heightBox,
                        Image.asset(
                          categoriesImages[index],
                          height: 120,
                          width: 180,
                          fit: BoxFit.fill,
                        ),
                        10.heightBox,
                        categoriesList[index]
                            .text
                            .color(darkFontGrey)
                            .fontFamily(bold)
                            .size(16)
                            .align(TextAlign.center)
                            .make(),
                      ],
                    )
                        .box
                        .white
                        .rounded
                        .clip(Clip.antiAlias)
                        .outerShadowSm
                        .make()
                        .onTap(
                      () {
                        Obx(() => Expanded(
                            child: probro
                                .elementAt(controll.currentNavIndex.value)));
                        // Get.to(() => CategoryDetails(title: categoriesList[index]));
                        // Get.to(() {
                        //   const Category1();
                        // });
                      },
                    ),
                  ),
                  Container()
                ],
              );
            }),
      ),
    ));
  }
}
