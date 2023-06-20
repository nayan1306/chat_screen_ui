import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(90.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25.0),
          bottomRight: Radius.circular(25.0),
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(CupertinoIcons.chevron_left_circle),
        iconSize: 25.0,
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Icon(
            Icons.account_circle,
            size: 50.0,
          ),
          const SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 10.0),
              Text(
                "Nayan Verma",
                style: TextStyle(color: Color.fromARGB(161, 0, 0, 0)),
              ),
              Text(
                'online',
                style: TextStyle(color: Colors.black26, fontSize: 15.0),
              ),
            ],
          ),
          const SizedBox(width: 72),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(left: 10.0),
            iconSize: 30.0,
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 223, 217, 255),
    );
  }
}
