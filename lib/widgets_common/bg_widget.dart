import 'package:club_management_flutter/consts/consts.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image:
          DecorationImage(image: AssetImage(imgBackground2), fit: BoxFit.fill),
    ),
    child: child,
  );
}

Widget bkWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage(icSplashBg2), fit: BoxFit.fill),
    ),
    child: child,
  );
}
