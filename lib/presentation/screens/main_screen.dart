import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_clone/presentation/screens/calls/call_logs.dart';
import '../../../utils/constants.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import 'chat/conversation_list.dart';
import 'chat/message_controller.dart';
import 'community/community_page.dart';
import 'updates/updates_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late TabController tabController;
  int selectedTab = 0;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    MessageController.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60.h,
          backgroundColor: primaryColor,
          leading: const SizedBox(),
          leadingWidth: Utils.kDefaultSpace,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          titleSpacing: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(KImages.camera)),
            if (selectedTab != 2)
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(KImages.search)),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                offset: const Offset(0, 60),
                color: scaffoldBgColor,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                itemBuilder: (context) {
                  return <PopupMenuEntry>[
                    const PopupMenuItem(
                      child: Text("New Group "),
                    ),
                    const PopupMenuItem(
                      child: Text("New boradcast"),
                    ),
                    const PopupMenuItem(
                      child: Text("Linked devices"),
                    ),
                    const PopupMenuItem(
                      child: Text("Starred messages"),
                    ),
                    const PopupMenuItem(
                      child: Text("Settins"),
                    ),
                  ];
                })
          ],
          bottom: TabBar(
              controller: tabController,
              onTap: (v) {
                setState(() {
                  selectedTab = v;
                });
              },
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.only(top: Utils.kDefaultSpace / 20),
              unselectedLabelStyle: TextStyle(
                  fontSize: 14.sp,
                  color: subTitleTextColor,
                  fontWeight: FontWeight.w600),
              labelPadding: const EdgeInsets.only(bottom: 0),
              labelStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
              tabs: [
                SizedBox(
                    width: size.width * 0.1,
                    child: const Tab(child: Icon(Icons.groups_2_rounded))),
                SizedBox(
                    width: size.width * 0.3,
                    child: const Tab(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Chats"),
                            SizedBox(width: 6),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 12,
                              child: Text(
                                "6",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                            )
                          ],
                        ))),
                SizedBox(
                    width: size.width * 0.3,
                    child: const Tab(child: Text("Updates"))),
                SizedBox(
                    width: size.width * 0.3, child: const Tab(child: Text("Calls"))),
              ]),
        ),
        body: TabBarView(controller: tabController, children: const [
          CommunityPage(),
          ConversationList(),
          UpdatesPage(),
          CallLogs(),
        ]),
      ),
    );
  }
}