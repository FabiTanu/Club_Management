import 'package:club_management_flutter/consts/consts.dart';
import 'package:club_management_flutter/views/category_screen/drawer.dart';
import 'package:flutter/cupertino.dart';

import '../../../consts/lists.dart';

class BannedCom extends StatelessWidget {
  const BannedCom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Banned Community",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: bannedColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        color: Colors.black,
        //width: context.screenWidth,
        //height: context.screenWidth,
        child: SafeArea(
          child: Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // Container(
                  //   alignment: Alignment.center,
                  //   height: 60,
                  //   color: lightGrey,
                  //   child: TextFormField(
                  //     decoration: const InputDecoration(
                  //       border: InputBorder.none,
                  //       suffixIcon: Icon(Icons.search),
                  //       filled: true,
                  //       fillColor: whiteColor,
                  //       hintText: searchanything,
                  //       hintStyle: TextStyle(color: textFieldGrey),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 120,
                          child: Image.asset(
                            imAppLogo,
                            //colorBlendMode: BlendMode.color,
                          ),
                        ),
                        70.widthBox,
                        SizedBox(
                          height: 120,
                          child: Image.asset(imgcl11),
                        ),
                      ],
                    ),
                  ),
                  20.heightBox,
                  //Swipers brands
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      height: 200,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      itemCount: bannedSlideList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          bannedSlideList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),

                  10.heightBox,
                  Container(
                    padding: const EdgeInsets.all(12),
                    // decoration: const BoxDecoration(
                    //     color: Color.fromRGBO(186, 201, 91, 1)),
                    child: "The Banned Community"
                        .text
                        .red600
                        .fontFamily(bold)
                        .size(20)
                        .make(),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    // decoration: const BoxDecoration(
                    //     color: Color.fromRGBO(186, 201, 91, 1)),
                    child: "Largest Musical club in leading University"
                        .text
                        .white
                        .fontFamily(bold)
                        .size(12)
                        .make(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    // decoration: const BoxDecoration(
                    //     color: Color.fromRGBO(186, 201, 91, 1)),
                    child: "Welcome Massage"
                        .text
                        .red500
                        .fontFamily(bold)
                        .size(18)
                        .make(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 120,
                          child: Image.asset(
                            b100,
                          ),
                        ),
                        10.heightBox,
                        const Text(
                          "Prof. Qazi Azizul Mowla",
                          style:
                              TextStyle(color: Colors.white, fontFamily: bold),
                        ),
                        const Text(
                          "PhD, FIAB, AAG",
                          style:
                              TextStyle(color: Colors.white, fontFamily: bold),
                        ),
                        const Text(
                          "Vice-Chancellor",
                          style:
                              TextStyle(color: Colors.white, fontFamily: bold),
                        ),
                        const Text(
                          "Leading University",
                          style:
                              TextStyle(color: Colors.white, fontFamily: bold),
                        ),
                        5.heightBox,
                        const Text(
                          "A club is a community made of volunteers where they all gather around and take initiatives, measurements and implements them for the greater interest of the community. The Banned Community of Leading University is one such organization. It is the largest musical club in Sylhet but based in Leading University which is a matter of pride for us. As years passed by, I have been observing this club and its members and admit that each year they are setting a new milestone for the members and for the people outside. Individuals engaged to this club do not just work hard and contribute to it but they also learn many important skills such as, communication, leadership, responsibility, accountability and of course, musical skills. All these will definitely be useful for their future. People get to cultivate their talent for music here and entertain others. This give them an inner satisfaction. Even though they leave after one year, former members remain as an unattaches part and they profoundly look after their juniors. Taking all their achievements and efforts into account, have to admit that, we, Leading University, are really proud of The Banned Community.",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: bannedDrawer(),
    );
  }
}

Widget bannedDrawer() {
  return Drawer(
    child: Container(
      color: bannedColor,
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: bannedColor),
                accountName: Text("Fabiha Akter"),
                accountEmail: Text("fabihaakter1999@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(imgProfile),
                  foregroundColor: bannedColor,
                  backgroundColor: bannedColor,
                ),
                //currentAccountPicture: Image.network(imageUrl),
              )),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.add_circled,
              color: Colors.white,
            ),
            title: Text(
              "Member Registration",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.arrow_down_right,
              color: Colors.white,
            ),
            title: Text(
              "Latest Events",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.arrow_down_right,
              color: Colors.white,
            ),
            title: Text(
              "Our Journey",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.arrow_down_right,
              color: Colors.white,
            ),
            title: Text(
              "Steering Committee",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.arrow_down_right,
              color: Colors.white,
            ),
            title: Text(
              "Contact us",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.arrow_down_right,
              color: Colors.white,
            ),
            title: Text(
              "About us",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ),
  );
}
