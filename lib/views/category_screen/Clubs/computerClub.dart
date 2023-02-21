import 'package:club_management_flutter/consts/consts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Category1 extends StatelessWidget {
  const Category1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: "Categori1 is Empty!"
          .text
          .fontFamily(semibold)
          .color(darkFontGrey)
          .makeCentered(),
    );
  }
}
// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: "Cart is Empty!"
//           .text
//           .fontFamily(semibold)
//           .color(darkFontGrey)
//           .makeCentered(),
//     );
//   }
// }
