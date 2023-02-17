import 'package:club_management_flutter/consts/consts.dart';
import 'package:club_management_flutter/consts/lists.dart';
import 'package:club_management_flutter/views/auth_Screen_Dart/login_Screen.dart';
import 'package:club_management_flutter/controllers/auth_controller.dart';
import 'package:club_management_flutter/views/profile_screen/components/details_cart.dart';
import 'package:club_management_flutter/views/profile_screen/edit_profile_screen.dart';
import 'package:club_management_flutter/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //edit profile button
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.edit,
                color: whiteColor,
              ),
            ).onTap(() {}),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Image.asset(
                  imgProfile2,
                  width: 100,
                  fit: BoxFit.cover,
                ).box.roundedFull.clip(Clip.antiAlias).make(),
                10.heightBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy User".text.fontFamily(semibold).white.make(),
                    5.heightBox,
                    "customer@example.com".text.white.make(),
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: whiteColor)),
                    onPressed: () {},
                    child: logout.text.fontFamily(semibold).white.make())
              ],
            ),
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailsCard(
                  count: "00",
                  title: "in your cart",
                  width: context.screenWidth / 3.4),
              detailsCard(
                  count: "32",
                  title: "in your whishlist",
                  width: context.screenWidth / 3.4),
              detailsCard(
                  count: "67",
                  title: " your orders",
                  width: context.screenWidth / 3.4),
            ],
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     "00".text.fontFamily(bold).color(darkFontGrey).size(16).make(),
          //     5.heightBox,
          //     "In the cart ".text.color(darkFontGrey).make(),
          //   ],
          // )
          //     .box
          //     .white
          //     .rounded
          //     .width(context.screenWidth / 3.2)
          //     .height(80)
          //     .padding(const EdgeInsets.all(4))
          //     .make(),

          //buttons sections

          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const Divider(
                color: lightGrey,
              );
            },
            itemCount: profileButtonList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.asset(
                  profileButtonIcon[index],
                  width: 22,
                ),
                title: profileButtonList[index]
                    .text
                    .fontFamily(semibold)
                    .color(darkFontGrey)
                    .make(),
              );
            },
          )
              .box
              .white
              .rounded
              .margin(const EdgeInsets.all(12))
              .shadowSm
              .padding(const EdgeInsets.symmetric(horizontal: 16))
              .make()
              .box
              .color(whiteColor)
              .make(),
        ],
      )),
    ));
  }
}
