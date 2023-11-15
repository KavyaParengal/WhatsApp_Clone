import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants.dart';
import '../../../utils/k_images.dart';
import '../../../utils/strings.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_button.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Image.asset(
            KImages.communityImg,
          ),
          FittedBox(
            child: Text(
              KStrings.communityTitleText,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: hTextColor,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            KStrings.communityParagraphText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: subTitleTextColor,
            ),
          ),
          const SizedBox(height: 10),
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                    foregroundColor: primaryColor,
                    textStyle:
                        const TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                ),
                onPressed: () {},
                label: Text(KStrings.communityExampleText)),
          ),
          const SizedBox(height: 30),
          CustomButton(
            text: KStrings.communityStartText,
            press: () {},
          )
        ],
      ),
    );
  }
}
