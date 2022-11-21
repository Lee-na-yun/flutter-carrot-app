import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/material.dart';

class LifeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: Border(bottom: BorderSide(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            _buildCachedNetworkImage(),
            const SizedBox(width: 16),
            Expanded(child: _buildText()),
          ],
        ),
      ),
    );
  }

  Text _buildText() {
    return Text(
      lifeTitle,
      style: textTheme().bodyText1,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildCachedNetworkImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: CachedNetworkImage(
        imageUrl: 'https://placeimg.com/200/100/people',
        width: 45,
        height: 45,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(
          value: progress.progress,
        ),
      ),
    );
  }
}
