import 'package:club_management_flutter/consts/consts.dart';
import 'package:club_management_flutter/consts/lists.dart';
import 'package:club_management_flutter/controllers/auth_controller.dart';
import 'package:club_management_flutter/views/auth_Screen_Dart/signup_screen.dart';
import 'package:club_management_flutter/views/home_Screen/home.dart';
import 'package:club_management_flutter/widgets_common/applogo_widget.dart';
import 'package:club_management_flutter/widgets_common/bg_widget.dart';
import 'package:club_management_flutter/widgets_common/custom_textfield.dart';
import 'package:club_management_flutter/widgets_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());

    return bgWidget(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(
                      title: email,
                      hint: emailHint,
                      isPass: false,
                      controller: controller.emailController),
                  customTextField(
                      hint: passwordHint,
                      title: password,
                      isPass: true,
                      controller: controller.passwordController),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: forgetPass.text.red500.make())),
                  5.heightBox,
                  // ourButton().box.width(context.screenWidth-50).make(),

                  ourButton(
                    color: splashcolor,
                    title: login,
                    textColor: whiteColor,
                    //onPress: (){}
                    onPress: () {
                      Get.to(() => const Home());
                    },

                    // onPress: () async {
                    //   await controller
                    //       .loginMethod(context: context)
                    //       .then((value) {
                    //     if (value != null) {
                    //       VxToast.show(context, msg: loggedin);
                    //       Get.offAll(() => const Home());
                    //     }
                    //   });
                    // },
                  ).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,

                  ourButton(
                      color: lightGolden,
                      title: signup,
                      textColor: redColor,
                      onPress: () {
                        Get.to(() => const SignupScreen());
                      }).box.width(context.screenHeight).make(),

                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 25,
                          child: Image.asset(
                            socialIconList[index],
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    ));
  }

  // Future<void> login() async{
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailc, password: password)
  // }
}
