import 'package:chat_screen_nv/widgets/chat_app_bar.dart';
import 'package:chat_screen_nv/widgets/chat_bubble.dart';
import 'package:chat_screen_nv/widgets/chat_text_box.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> chatMessages = [
    "Hello",
    "Hi there!",
    "How are you?",
    "I'm good, thanks!",
    "What about you?",
    "I hope you are doing great.",
    "Nice to meet you!",
    "I'm having a busy day.",
    "Any plans for the weekend?",
    "Not yet, I'm still deciding.",
    "Let's catch up sometime.",
    "Do you like watching movies?",
    "Yes, I'm a big movie fan!",
    "What's your favorite genre?",
    "I enjoy action and comedy.",
    "That's great! We have similar tastes.",
    "Have you traveled anywhere recently?",
    "Yes, I went on a trip to the mountains.",
    "The scenery was breathtaking.",
    "I would love to visit there someday!",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const ChatAppBar(),
        body: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: chatMessages.length,
                  itemBuilder: (context, index) {
                    final message = chatMessages[index];
                    final isMe =
                        index % 2 == 0; // Alternate sender for demo purposes

                    return ChatBubble(
                      message: message,
                      isMe: isMe,
                      time: '10:00',
                    );
                  }),
            ),
            const ChatTextBox(),
          ],
        ),
      ),
    );
  }
}
