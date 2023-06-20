import 'package:flutter/material.dart';

class ChatTextBox extends StatefulWidget {
  const ChatTextBox({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatTextBoxState createState() => _ChatTextBoxState();
}

class _ChatTextBoxState extends State<ChatTextBox> {
  bool _isFocused = false;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 5.0, left: 10.0, bottom: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0.0, -3.0),
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle emoji picker button pressed
                    },
                    icon: const Icon(
                      Icons.emoji_emotions,
                      color: Color.fromARGB(255, 183, 171, 255),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      onChanged: (value) {
                        setState(() {
                          // Check if text field is not empty
                          _isFocused = value.trim().isNotEmpty;
                        });
                      },
                      onTap: () {
                        setState(() {
                          _isFocused =
                              _textEditingController.text.trim().isNotEmpty;
                        });
                      },
                      onSubmitted: (value) {
                        // Handle text submission
                        _textEditingController.clear();
                        setState(() {
                          _isFocused = false;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: "Type a message...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle media picker button pressed
                    },
                    icon: const Icon(
                      Icons.attach_file,
                      color: Color.fromARGB(255, 183, 171, 255),
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle microphone button pressed
            },
            icon: Icon(
              _isFocused ? Icons.send : Icons.mic,
              color: const Color.fromARGB(255, 183, 171, 255),
              size: 35.0,
              shadows: const [
                Shadow(
                    color: Color.fromARGB(255, 119, 119, 119),
                    offset: Offset(1.8, 0.1),
                    blurRadius: 5)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
