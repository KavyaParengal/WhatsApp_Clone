
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/dummy_data.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/k_images.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/utils.dart';
import '../../../routes/routes_names.dart';

class StatusHorizontal extends StatelessWidget {
  const StatusHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
          .copyWith(right: 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                KStrings.story,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: hTextColor,
                ),
              ),
              PopupMenuButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.more_vert,
                    color: subTitleTextColor,
                  ),
                  offset: const Offset(0, 35),
                  color: scaffoldBgColor,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  itemBuilder: (context) {
                    return <PopupMenuEntry>[
                      const PopupMenuItem(
                        child: Text("Muted updates"),
                      ),
                      const PopupMenuItem(
                        child: Text("Status privacy"),
                      ),
                    ];
                  })
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(KImages.chatAvatar1),
                      ),
                      Positioned(
                        right: -10,
                        bottom: 0,
                        child: Container(
                          height: 30,
                          width: 30,
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Container(
                              height: 20,
                              width: 20,
                              padding: const EdgeInsets.all(0),
                              decoration: const BoxDecoration(
                                  color: primaryColor, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text("My Status"),
                ],
              ),
              const SizedBox(width: 20),
              SingleChildScrollView(
                child: Row(
                  children: [
                    ...List.generate(
                      KDummyData.storyList.length,
                      (index) => Story(index: index),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RouteNames.storyPage);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DottedBorder(
              dashPattern: [10, 4],
              strokeWidth: 2,
              borderType: BorderType.Circle,
              color: primaryColor,
              strokeCap: StrokeCap.round,
              padding: const EdgeInsets.all(3),
              child: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage(KDummyData.storyList[index]['avatar']!)),
            ),
            const SizedBox(height: 4),
            Text(
              KDummyData.storyList[index]['user']!.split(" ").first,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
