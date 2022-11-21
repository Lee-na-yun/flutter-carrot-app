import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;
  const LifeBody({Key? key, required this.neighborhoodLife}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          _buildTopText(),
          _buildUserInfo(),
          _buildContent(),
          _buildContentImage(),
          const SizedBox(height: 20),
          Divider(
            color: Colors.grey[300],
            height: 1,
            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.smile,
                  color: Colors.grey,
                  size: 22,
                ),
                SizedBox(width: 8),
                Text("공감하기", style: textTheme().bodyText1),
                SizedBox(width: 22),
                Icon(
                  FontAwesomeIcons.commentAlt,
                  color: Colors.grey,
                  size: 22,
                ),
                SizedBox(width: 8),
                Text("댓글쓰기", style: textTheme().bodyText1),
                SizedBox(width: 8),
                Text("${neighborhoodLife.commentCount}", style: textTheme().bodyText1),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Visibility _buildContentImage() {
    return Visibility(
      visible: neighborhoodLife.contentImgUri != '',
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CachedNetworkImage(
          imageUrl: neighborhoodLife.contentImgUri,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(
            value: progress.progress,
          ),
        ),
      ),
    );
  }

  Padding _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        child: Text(
          "${neighborhoodLife.content}",
          style: textTheme().bodyText1,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Padding _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              imageUrl: neighborhoodLife.profileImgUri,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
          Text(" ${neighborhoodLife.userName}", style: textTheme().bodyText1),
          Text(" ${neighborhoodLife.location}"),
          Text(" 인증 ${neighborhoodLife.authCount}회"),
        ],
      ),
    );
  }

  Padding _buildTopText() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${neighborhoodLife.category}", style: textTheme().bodyText2),
          Text("${neighborhoodLife.date}", style: textTheme().bodyText2),
        ],
      ),
    );
  }
}
