import '../model/call_log_model.dart';
import '../model/channel_news_model.dart';
import '../model/chats_model.dart';
import '../model/participants_chat_model.dart';
import '../utils/k_images.dart';

class KDummyData {
  static List<Participant> chatsList = [
    Participant(
        id: 1,
        avatar: KImages.chatAvatar1,
        name: "Kavya",
        lastMessage: "Let's meet",
        messageFrom: "user",
        isImage: false,
        seen: true,
        delivered: true,
        unread: 7,
        sent: true,
        date: DateTime.now().toString()),
    Participant(
        id: 2,
        avatar: KImages.chatAvatar2,
        name: "Fayisa",
        lastMessage: "Let's meet",
        messageFrom: "sender",
        isImage: false,
        seen: true,
        delivered: true,
        sent: true,
        unread: 0,
        date: DateTime.now().toString()),
    Participant(
        id: 3,
        avatar: KImages.chatAvatar3,
        name: "Mushrifa",
        lastMessage: "How are you today?",
        messageFrom: "sender",
        seen: true,
        delivered: true,
        sent: true,
        unread: 0,
        date: DateTime.now().toString(),
        isImage: false),
    Participant(
        id: 4,
        avatar: KImages.chatAvatar4,
        name: "Afeefa",
        lastMessage: "Sorry, I couldn't attend your party",
        messageFrom: "sender",
        seen: true,
        delivered: true,
        sent: true,
        unread: 3,
        date: DateTime.now().toString(),
        isImage: false),
    Participant(
        id: 5,
        avatar: KImages.chatAvatar5,
        name: "Mufeeda",
        lastMessage: "Hey! are you available?",
        messageFrom: "user",
        seen: false,
        delivered: false,
        sent: true,
        unread: 0,
        date: DateTime.now().toString(),
        isImage: false),
    Participant(
        id: 6,
        avatar: KImages.chatAvatar6,
        name: "Sameea",
        lastMessage: "That's right",
        messageFrom: "sender",
        seen: true,
        delivered: true,
        sent: true,
        unread: 0,
        date: DateTime.now().toString(),
        isImage: false),
    Participant(
        id: 7,
        avatar: KImages.chatAvatar7,
        name: "Farha",
        lastMessage: "Could you please fix this?",
        messageFrom: "sender",
        seen: true,
        delivered: true,
        sent: true,
        unread: 0,
        date: DateTime.now().toString(),
        isImage: false),
  ];

  static List<Map<String, String>> storyList = [
    {
      "user": "Martin Luther",
      "avatar": KImages.chatAvatar1,
    },
    {
      "user": "Carla Korsgaard",
      "avatar": KImages.chatAvatar3,
    },
    {
      "user": "Philip Westervelt",
      "avatar": KImages.chatAvatar6,
    }
  ];

  static ParticipantsChat participantsChat = ParticipantsChat(
      id: 1,
      participant: "Kavya",
      avatar: KImages.chatAvatar1,
      status: "Online",
      contact: "01712312312",
      messages: <Messages>[
        Messages(
          id: 1,
          message: "Hi",
          sender: "participant",
          date: DateTime.now(),
          seen: true,
          delivered: true,
          sent: true,
        ),
        Messages(
          id: 2,
          message: "Hello",
          sender: "user",
          date: DateTime.now(),
          seen: true,
          delivered: true,
          sent: true,
        ),
        Messages(
          id: 3,
          message: "How are you?",
          sender: "user",
          date: DateTime.now(),
          seen: true,
          delivered: true,
          sent: true,
        ),
        Messages(
          id: 4,
          message: "I'm absolutely fine, what about you?",
          sender: "participant",
          date: DateTime.now(),
          seen: true,
          delivered: true,
          sent: true,
        ),
        Messages(
          id: 5,
          message: "Everything is going well",
          sender: "user",
          date: DateTime.now(),
          seen: true,
          delivered: true,
          sent: true,
        ),
        Messages(
          id: 6,
          message: "Have you done your assignments?",
          sender: "participant",
          date: DateTime.now(),
          seen: true,
          delivered: true,
          sent: true,
        ),
        Messages(
          id: 7,
          message: "No! not yet",
          sender: "user",
          date: DateTime.now(),
          seen: true,
          delivered: true,
          sent: true,
        ),
      ]);

  static List<ChannelNews> channelNews = [
    ChannelNews(
      channelName: "The New York Times",
      avatar: KImages.chatAvatar2,
      news:
      "An Israeli airstrike hit a Gaza hospital on Tuesday, killing at least 200 Palestinians, according to the Palestinian Health Minister.",
      isImageAttached: true,
      newImage: "assets/images/morskie-oko-tatry.jpg",
      date: DateTime.now().toString(),
    ),
    ChannelNews(
      channelName: "Al Jazeera",
      avatar: KImages.chatAvatar1,
      news:
      "An Israeli airstrike hit a Gaza hospital on Tuesday, killing at least 200 Palestinians, according to the Palestinian Health Minister.",
      isImageAttached: true,
      newImage: "assets/images/morskie-oko-tatry.jpg",
      date: DateTime.now().toString(),
    ),
    ChannelNews(
      channelName: "Mark Zuckerberg",
      avatar: KImages.chatAvatar3,
      news:
      "An Israeli airstrike hit a Gaza hospital on Tuesday, killing at least 200 Palestinians, according to the Palestinian Health Minister.",
      isImageAttached: true,
      newImage: "assets/images/morskie-oko-tatry.jpg",
      date: DateTime.now().toString(),
    ),
    ChannelNews(
      channelName: "BBC News",
      avatar: KImages.chatAvatar5,
      news:
      "An Israeli airstrike hit a Gaza hospital on Tuesday, killing at least 200 Palestinians, according to the Palestinian Health Minister.",
      isImageAttached: true,
      newImage: "assets/images/morskie-oko-tatry.jpg",
      date: DateTime.now().toString(),
    ),
  ];

  static List<CallLog> callHistory = [
    CallLog(
      personName: "Kavya",
      avatar: KImages.chatAvatar1,
      time: "Today, 11:30 AM",
      callType: "Video",
      isMissed: false,
      incoming: false,
      numberOfCall: 2,
    ),
    CallLog(
        personName: "Sameea",
        avatar: KImages.chatAvatar1,
        time: "Yesterday, 8:47 PM",
        callType: "video",
        isMissed: true,
        incoming: true,
        numberOfCall: 2),
    CallLog(
        personName: "Mushrifa",
        avatar: KImages.chatAvatar1,
        time: "Yesterday, 8:47 PM",
        callType: "audio",
        isMissed: false,
        incoming: true,
        numberOfCall: 2),
  ];

  static List<Map<String, String>> contacts = [
    {"user": "Kavya",
      "avatar": KImages.chatAvatar1,
      "status": "Busy"
    },
    {
      "user": "Afeefa",
      "avatar": KImages.chatAvatar2,
      "status": "At school"
    },
    {
      "user": "Sameea",
      "avatar": KImages.chatAvatar3,
      "status": "Call me later"
    },
    {
      "user": "Mushrifa",
      "avatar": KImages.chatAvatar4,
      "status": "I'm in a meeting"
    },
    {
      "user": "Fayisa",
      "avatar": KImages.chatAvatar5,
      "status": "Available"
    },
    {
      "user": "Neethu",
      "avatar": KImages.chatAvatar6,
      "status": "At gym"
    },
  ];
}