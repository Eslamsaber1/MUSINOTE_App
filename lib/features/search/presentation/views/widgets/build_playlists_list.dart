import 'package:flutter/material.dart';
import 'package:musinote/features/search/presentation/views/widgets/build_playlist_card.dart';

Widget buildPlaylistsList(List<PlaylistItem> playlists) {
  return GridView.count(
    padding: EdgeInsets.zero,
    crossAxisCount: 2,
    crossAxisSpacing: 33,
    mainAxisSpacing: 7,
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: playlists.map((p) => buildPlaylistCard(p)).toList(),
  );
}
