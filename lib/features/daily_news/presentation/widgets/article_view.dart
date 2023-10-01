import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../bloc/article/remote/remote_article_state.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({
    super.key,
    required this.state,
    required this.index,
  });
  final RemoteArticlesDone state;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: state.articles?[index].urlToImage ?? "",
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              state.articles?[index].title ?? "Null",
            ),
          ),
        ],
      ),
    );
  }
}
