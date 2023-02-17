import 'package:club_management_flutter/consts/consts.dart';
import 'package:club_management_flutter/widgets_common/bg_widget.dart';

import '../../consts/lists.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            itemBuilder: (context, index) {
              return Column(
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
                  .onTap(() {
                // Get.to(() => CategoryDetails(title: categoriesList[index]));
              });
            }),
      ),
    ));
  }
}
