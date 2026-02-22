import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/widgets/gradient_scaffold.dart';
import 'package:musinote/core/widgets/play_back_controlls.dart';
import 'package:musinote/core/widgets/song_info_section.dart';
import 'package:musinote/features/practice_mode/presentation/views/widgets/build_card.dart' show buildCard;
import 'package:musinote/features/practice_mode/presentation/views/widgets/build_metronome_card.dart';
import 'package:musinote/features/practice_mode/presentation/views/widgets/build_note_label.dart';
import 'package:musinote/features/practice_mode/presentation/views/widgets/build_progress_bar.dart' show buildProgressbar;
import 'package:musinote/features/practice_mode/presentation/views/widgets/build_toggle_row.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'widgets/build_loop_selection_card.dart';
import 'widgets/build_practice_appbar.dart';

class PracticeModeView extends StatefulWidget {
  const PracticeModeView({super.key});

  static const String routeName = '/practice-mode';

  @override
  State<PracticeModeView> createState() => _PracticeModeViewState();
}

class _PracticeModeViewState extends State<PracticeModeView> {
  double _playbackSpeed = 1.0; // 100%
  bool _showNoteHints = false;
  bool _showChords = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: buildPracticeAppBar(context),
      body: GradientScaffold(
        gradient: AppColors.linearGradient2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: kToolbarHeight + 40),
              SongInfoSection(textColor: Colors.white),
              SizedBox(height: 26),
              // Progress bar
              buildProgressbar(),
              SizedBox(height: 16),
              PlaybackControls(),
              SizedBox(height: 36),
              // Notes label
              buildNotesLabel(),
              const SizedBox(height: 6),
              buildPlaybackSpeedCard(context),
              const SizedBox(height: 14),
              buildLoopSelectionCard(),
              const SizedBox(height: 14),
              buildMetronomeCard(context),
              const SizedBox(height: 14),
              buildDisplayOptionsCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPlaybackSpeedCard(BuildContext context) {
    return buildCard(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/icons/playback.svg'),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Playback Speed', style: AppTextStyles.regular16.copyWith(color: Colors.white),),
                  Text('${(_playbackSpeed * 100).toInt()}%', style: AppTextStyles.regular16.copyWith(color: Colors.white),)
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white24,
              thumbColor: Colors.white,
              thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 7),
              trackHeight: 3,
              overlayShape: SliderComponentShape.noOverlay,
            ),
            child: Slider(
              value: _playbackSpeed,
              min: 0.25,
              max: 1.0,
              onChanged: (v) => setState(() => _playbackSpeed = v),
            ),
          ),
          SizedBox(height: 4,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildTextProgress(text: '25%'),
                buildTextProgress(text: '50%'),
                buildTextProgress(text: '75%'),
                buildTextProgress(text: '100%'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDisplayOptionsCard() {
    return buildCard(child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/display options.svg'),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Display Options', style: AppTextStyles.regular16.copyWith(color: Colors.white),),
                          SizedBox(height: 8,),
                          buildToggleRow('Show Note Hints',
                              _showNoteHints, (v) {
                                setState(() => _showNoteHints = v);
                              }),
                          buildToggleRow(
                              'Show Chords', _showChords, (v) {
                            setState(() => _showChords = v);
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),);
  }
  
  Text buildTextProgress({required String text}) => Text(text, style: AppTextStyles.regular12.copyWith(color: Colors.white),);
}
