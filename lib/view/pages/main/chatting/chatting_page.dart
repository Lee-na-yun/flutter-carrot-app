import 'package:carrot_market/models/chat_message.dart';
import 'package:carrot_market/theme.dart';
import 'package:carrot_market/view/pages/main/chatting/components/chat_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildChatAppBar(),
      body: ListView.separated(
        itemCount: chatMessageList.length,
        itemBuilder: (context, index) => ChatItem(chatMessageList[index]),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.black12,
        ),
      ),
    );
  }

  AppBar _buildChatAppBar() {
    return AppBar(
      title: Text(
        "채팅",
        style: textTheme().headline1,
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.barcode_viewfinder)),
        IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Divider(
          thickness: 0.5,
          height: 0.5,
          color: Colors.black12,
        ),
      ),
    );
  }
}
