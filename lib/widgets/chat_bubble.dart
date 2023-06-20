import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String time;
  final String message;
  final bool isMe;

  const ChatBubble(
      {super.key,
      required this.message,
      required this.isMe,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.only(
                top: 14.0, left: 12.0, bottom: 6.0, right: 10.0),
            decoration: BoxDecoration(
              color: isMe
                  ? const Color.fromARGB(255, 223, 202, 252)
                  : Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 1.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7),
                  offset: const Offset(1.5, 3.0),
                  blurRadius: 3.0,
                ),
              ],
            ),
            child: Text(
              message,
              style: TextStyle(
                color: isMe ? const Color.fromARGB(255, 0, 0, 0) : Colors.black,
              ),
            ),
          ),
          Padding(
            padding: isMe
                ? const EdgeInsets.only(right: 16.0)
                : const EdgeInsets.only(left: 16.0),
            child: Text(
              time,
              style: const TextStyle(
                color: Color.fromARGB(255, 82, 82, 82),
                fontSize: 10.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
