import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/widgets/gradient_scaffold.dart';
import 'package:musinote/features/song_notes/presentation/views/widgets/note_header.dart';
import 'package:musinote/features/song_notes/presentation/views/widgets/notes_section.dart';
import 'package:musinote/core/widgets/play_back_controlls.dart';
import 'package:musinote/core/widgets/song_info_section.dart';
import 'package:musinote/core/widgets/note_section_app_bar.dart';
import 'package:musinote/features/song_notes/presentation/views/widgets/queue_buttom.dart';

class SongNotesView extends StatelessWidget {
  const SongNotesView({super.key});

  static const String routeName = '/song-notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: NoteSectionAppBar(),
      body: GradientScaffold(
        gradient: AppColors.backgroundGradient1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: kToolbarHeight+5),
              NoteHeader(),
              SizedBox(height: 15),
              NotesSection(),
              SizedBox(height: 24),
              SongInfoSection(),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: PlaybackControls(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: QueueButton(),
    );
  }
}