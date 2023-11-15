import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../data/dummy_data.dart';
import '../../../../model/channel_news_model.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/utils.dart';

import '../../../../utils/strings.dart';

class ChannelsList extends StatelessWidget {
  const ChannelsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
          .copyWith(right: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                KStrings.channels,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: hTextColor,
                ),
              ),
              PopupMenuButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.add,
                  color: subTitleTextColor,
                ),
                offset: Offset(0, 35),
                color: scaffoldBgColor,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                itemBuilder: (context) {
                  return <PopupMenuEntry>[
                    PopupMenuItem(
                      child: Text("Find channels"),
                    ),
                  ];
                },
              )
            ],
          ),
          SizedBox(height: 12),
          ...List.generate(
            KDummyData.channelNews.length,
            (index) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ChannelCard(
                  news: KDummyData.channelNews[index],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Divider(
                    height: 2,
                    color: subTitleTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChannelCard extends StatelessWidget {
  const ChannelCard({
    super.key,
    required this.news,
  });
  final ChannelNews news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(news.avatar),
            ),
            title: Text(
              news.channelName,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: hTextColor,
              ),
            ),
          ),
          SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  news.news.replaceFirst("", " \t"),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: subTitleTextColor,
                  ),
                ),
              ),
              SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}
