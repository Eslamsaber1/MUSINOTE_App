import 'package:flutter/material.dart';
import 'package:musinote/features/song_notes/presentation/views/widgets/note_card.dart';

class NotesSection extends StatelessWidget {
  const NotesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NoteCard(imagePath: 'assets/images/piano1.png'),
        SizedBox(height: 12),
        NoteCard(imagePath: 'assets/images/piano2.png'),
        SizedBox(height: 12),
        NoteCard(imagePath: 'assets/images/piano3.png'),
        SizedBox(height: 12),
        NoteCard(imagePath: 'assets/images/piano4.png'),
      ],
    );
  }
}
