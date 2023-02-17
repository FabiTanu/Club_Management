import 'package:club_management_flutter/consts/consts.dart';
import 'package:club_management_flutter/widgets_common/applogo_widget.dart';
import 'package:club_management_flutter/widgets_common/bg_widget.dart';
import 'package:club_management_flutter/widgets_common/custom_textfield.dart';
import 'package:club_management_flutter/widgets_common/our_button.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Join the $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(hint: nameHint, title: name),
                  customTextField(title: email, hint: emailHint),
                  customTextField(hint: passwordHint, title: password),
                  customTextField(hint: passwordHint, title: reTypePassword),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetPass.text.make())),
                  5.heightBox,
                  // ourButton().box.width(context.screenWidth-50).make(),

                  Row(
                    children: [
                      Checkbox(
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        },
                        checkColor: redColor,
                      ),
                      10.heightBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              ),
                            ),
                            TextSpan(
                              text: termAndCond,
                              style: TextStyle(
                                fontFamily: regular,
                                color: redColor,
                              ),
                            ),
                            TextSpan(
                              text: "&",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              ),
                            ),
                            TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                fontFamily: regular,
                                color: redColor,
                              ),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                  10.heightBox,
                  ourButton(
                          color: isCheck == true ? redColor : lightGrey,
                          title: signup,
                          textColor: whiteColor,
                          onPress: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  //Wrapping into gesture detector of velocity x
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreadyHaveAccount.text.color(fontGrey).make(),
                      login.text.color(redColor).make().onTap(() {
                        Get.back();
                      })
                    ],
                  )
                  // RichText(
                  //   text: const TextSpan(
                  //     children: [
                  //       TextSpan(
                  //         text: alreadyHaveAccount,
                  //         style: TextStyle(fontFamily: bold, color: fontGrey),
                  //       ),
                  //       TextSpan(
                  //         text: login,
                  //         style: TextStyle(fontFamily: bold, color: redColor),
                  //       ),
                  //     ],
                  //   ),
                  // ).onTap(
                  //   () {
                  //     Get.back();
                  //   },
                  // ),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16.0))
                  .shadowSm
                  .width(context.screenWidth - 70)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
