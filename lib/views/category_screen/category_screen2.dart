import 'package:club_management_flutter/consts/consts.dart';

import 'package:club_management_flutter/widgets_common/bg_widget.dart';

import 'package:get/get.dart';

import 'Clubs/clubUrl.dart';

class CategoryScreen2 extends StatelessWidget {
  const CategoryScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return bkWidget(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Club Categories"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                mainAxisExtent: 200),
            children: [
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      //categoriesImages[index],
                      "assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    computerClub.text
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
                    Get.to(() => const Category1());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      imgcl2,
                      //categoriesImages[index],
                      //"assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    socialServiceClub.text
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
                    Get.to(() => const Category2());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      imgcl3,
                      //categoriesImages[index],
                      //"assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    electronicClub.text
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
                    Get.to(() => const Category2());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      imgcl4,
                      //categoriesImages[index],
                      //"assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    culturalClub.text
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
                    Get.to(() => const Category2());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      imgcl5,
                      //categoriesImages[index],
                      //"assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    debatingClub.text
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
                    Get.to(() => const Category2());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      imgcl6,
                      //categoriesImages[index],
                      //"assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    lumuna.text
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
                    Get.to(() => const Category2());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      imgcl7,
                      //categoriesImages[index],
                      //"assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    bncc.text
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
                    Get.to(() => const Category2());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      imgcl8,
                      //categoriesImages[index],
                      //"assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    sportsClub.text
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
                    Get.to(() => const Category2());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      imgcl9,
                      //categoriesImages[index],
                      //"assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    photographic.text
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
                    Get.to(() => const Category2());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      imgcl10,
                      //categoriesImages[index],
                      //"assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    orpheus.text
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
                    Get.to(() => const Category2());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    25.heightBox,
                    Image.asset(
                      imgcl11,
                      //categoriesImages[index],
                      //"assets/images2/Computerclub.jpg",
                      height: 120,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                    10.heightBox,
                    //categoriesList[index]
                    banned.text
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
                    Get.to(() => const Category2());
                    // Get.to(() => CategoryDetails(title: categoriesList[index]));
                    // Get.to(() {
                    //   const Category1();
                    // });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
