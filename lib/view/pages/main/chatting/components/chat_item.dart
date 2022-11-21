import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/chat_message.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final ChatMessage chatMessage;
  const ChatItem(this.chatMessage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.black12, width: 1),
      )),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: CachedNetworkImage(
                imageUrl: chatMessage.profileImage,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Row(
                    children: [
                      Text("${chatMessage.sender}", style: textTheme().bodyText1),
                      Text("${chatMessage.location}"),
                      Text(" · ${chatMessage.sendDate}"),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "${chatMessage.message}",
                    style: textTheme().bodyText1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                ],
              ),
            ),
            Visibility(
              visible: chatMessage.imageUri != null,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    imageUrl: "${chatMessage.imageUri}",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
