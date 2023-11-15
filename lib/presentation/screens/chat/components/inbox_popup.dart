import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class InboxPopup extends StatelessWidget {
  const InboxPopup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      offset: const Offset(0, 50),
      color: scaffoldBgColor,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.zero,
      itemBuilder: (context) {
        return <PopupMenuEntry>[
          const PopupMenuItem(
            child: Text("View contact"),
          ),
          const PopupMenuItem(
            child: Text("Media, links, and docs"),
          ),
          const PopupMenuItem(
            child: Text("Search"),
          ),
          const PopupMenuItem(
            child: Text("Disappearing messages"),
          ),
          const PopupMenuItem(
            child: Text("Wallpapers"),
          ),
          const PopupMenuItem(
            child: Text("More"),
          ),
        ];
      },
    );
  }
}
