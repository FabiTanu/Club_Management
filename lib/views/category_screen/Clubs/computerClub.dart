import 'package:club_management_flutter/consts/consts.dart';
import 'package:club_management_flutter/views/category_screen/drawer.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ComputerClub extends StatelessWidget {
  const ComputerClub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Computer Club",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        color: lightGrey,
        width: context.screenWidth,
        height: context.screenWidth,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 60,
                color: lightGrey,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    hintText: searchanything,
                    hintStyle: TextStyle(color: textFieldGrey),
                  ),
                ),
              ),
              20.heightBox,
              Container(
                padding: const EdgeInsets.all(12),
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(186, 201, 91, 1)),
                child: "Welcome! To Leading University Club"
                    .text
                    .black
                    .fontFamily(bold)
                    .size(18)
                    .make(),
              ),
            ],
          ),
        ),
        //color: Colors.white,
        //   child: "Categori1 is Empty!"
        //       .text
        //       .fontFamily(semibold)
        //       .color(darkFontGrey)
        //       .makeCentered(),
      ),
      //drawer: const MyDrawer(),
      drawer: changeDrawer(),
    );
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
}
