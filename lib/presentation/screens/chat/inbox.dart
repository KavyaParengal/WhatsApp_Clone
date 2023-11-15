import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grouped_list/grouped_list.dart';

import '../../../data/dummy_data.dart';
import '../../../model/participants_chat_model.dart';
import '../../../utils/constants.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import 'components/appbar_component.dart';
import 'components/inbox_popup.dart';
import 'components/input_text_emoji.dart';
import 'components/message_item.dart';
import 'message_controller.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final user = KDummyData.participantsChat;

    return WillPopScope(
      onWillPop: () async {
        FocusScope.of(context).unfocus();
        return true;
      },
      child: Scaffold(
        appBar: _buildAppBar(user),
        body: Container(
          height: size.height,
          width: size.width,
          decoration: _decoration(),
          child: Column(
            children: [
              Expanded(
                child: StreamBuilder(
                    stream: MessageController.streamData,
                    builder: (context, snapshot) {
                      if (snapshot.data != null) {
                        final messageList = snapshot.data!.reversed.toList();
                        return GroupedListView<Messages, DateTime>(
                          padding: const EdgeInsets.all(0),
                          elements: messageList,
                          groupBy: (element) => DateTime(
                            element.date.year,
                            element.date.month,
                            element.date.day,
                          ),
                          groupSeparatorBuilder: (DateTime groupByValue) =>
                              MessageSeparator(groupByValue: groupByValue),

                          itemBuilder: (context, Messages element) =>
                              MessageComponent(element: element),

                          itemComparator: (item1, item2) =>
                              item1.date.compareTo(item2.date),
                          // optional
                          useStickyGroupSeparators: false,
                          // optional
                          floatingHeader: true,
                          // optional
                          order: GroupedListOrder.ASC, // optional
                        );
                      }
                      return const SizedBox();
                    }),
              ),
              const TextEmojiInputField(),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(ParticipantsChat user) {
    return AppBar(
      backgroundColor: primaryColor,
      leadingWidth: 70.w,
      leading: AvatarAndBackNavigate(user: user),
      title: UserAndStatus(user: user),
      actions: [
        SvgPicture.asset(
          KImages.video,
          height: 24.w,
        ),
        const SizedBox(width: 24),
        SvgPicture.asset(
          KImages.phone,
          height: 24.w,
        ),
        const SizedBox(width: 10),
        const InboxPopup()
      ],
    );
  }

  BoxDecoration _decoration() {
    return const BoxDecoration(
      image: DecorationImage(
          image: AssetImage(KImages.defaultWallpaper), fit: BoxFit.cover),
    );
  }
}
