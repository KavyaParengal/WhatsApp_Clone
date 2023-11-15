
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants.dart';
import '../../utils/strings.dart';
import '../../widgets/custom_button.dart';
import '../routes/routes_names.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: scaffoldBgColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          KStrings.enterPhoneTitle,
          style: TextStyle(
            fontSize: 16.sp,
            color: primaryColor,
          ),
        ),
        actions: [
          PopupMenuButton(
              icon: const Icon(Icons.more_vert, color: subTitleTextColor),
              color: scaffoldBgColor,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              itemBuilder: (context) {
                return <PopupMenuEntry>[
                  const PopupMenuItem(
                    child: Text("Link as companion device"),
                  ),
                  const PopupMenuItem(
                    child: Text("Help"),
                  ),
                ];
              })
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Text.rich(
                  textAlign: TextAlign.center,
                  selectionColor: Colors.blue,
                  TextSpan(
                      text: KStrings.verifyAccountText,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: textColor,
                      ),
                      children: [
                        TextSpan(
                          text: KStrings.myNumber,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14.sp,
                          ),
                        ),
                      ])),
              const SizedBox(height: 10),
              SizedBox(
                width: size.width * 0.7,
                child: DropdownButton<String>(
                    hint: const Text("India"),
                    isExpanded: true,
                    alignment: Alignment.center,
                    items: const [
                      DropdownMenuItem(
                        value: "India",
                        child: Text("India"),
                      )
                    ],
                    onChanged: (v) {}),
              ),
              SizedBox(
                width: size.width * 0.7,
                child: Row(
                  children: [
                    const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            // prefixIcon: Icon(
                            //   Icons.add,
                            //   size: 20,
                            // ),
                            hintText: "+91",
                          ),
                        )),
                    const SizedBox(width: 10),
                    Expanded(
                        flex: 3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: KStrings.phoneHint,
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                KStrings.carrierCharge,
                style: const TextStyle(
                  color: subTitleTextColor,
                ),
              ),
              const Spacer(),
              SizedBox(
                  width: 100,
                  child: CustomButton(
                      text: "Next",
                      textSize: 16,
                      press: () {
                        Navigator.pushNamed(context, RouteNames.mainScreen);
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
