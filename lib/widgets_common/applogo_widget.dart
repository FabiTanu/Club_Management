import 'package:club_management_flutter/consts/consts.dart';

Widget applogoWidget() {
  //using velocity x here
  return Image.asset(imAppLogo)
      .box
      .white
      .size(90, 90)
      .padding(
        EdgeInsets.all(8),
      )
      .rounded
      .make();
}