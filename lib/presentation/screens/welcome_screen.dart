
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants.dart';
import '../../utils/k_images.dart';
import '../../utils/strings.dart';
import '../../widgets/custom_button.dart';
import '../routes/routes_names.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(KImages.whatsappWelcome),
              Text(
                KStrings.welcomeTitle,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20,),
              Text.rich(
                  textAlign: TextAlign.center,
                  selectionColor: Colors.blue,
                  TextSpan(
                      text: KStrings.read,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: subTitleTextColor,
                      ),
                      children: [
                        TextSpan(
                          text: KStrings.privacyPolicy,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14.sp,
                          ),
                        ),
                        TextSpan(
                          text: KStrings.tapAgree,
                          style: TextStyle(
                            color: subTitleTextColor,
                            fontSize: 14.sp,
                          ),
                        ),
                        TextSpan(
                          text: KStrings.termsService,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14.sp,
                          ),
                        )
                      ])),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  openBottomSheet(context);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        KImages.world,
                        color: primaryColor,
                        height: 24,
                      ),
                      const SizedBox(width: 16,),
                      Text(
                        "English",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16.sp,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      const Icon(
                        Icons.expand_more,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              CustomButton(
                text: KStrings.agreeContinue,
                press: () {
                  Navigator.pushNamed(context, RouteNames.auth);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        showDragHandle: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        enableDrag: true,
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context, index ) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: double.infinity,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.clear,color: subTitleTextColor,)
                          ),
                          const SizedBox(width: 20),
                          Text(
                            "App language",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ...List.generate(
                          10,
                              (index) => RadioListTile(
                            value: 1,
                            groupValue: "groupValue",
                            onChanged: (v) {},
                            title: const Text("English"),
                            subtitle: const Text("(Device language)"),
                          )),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}
