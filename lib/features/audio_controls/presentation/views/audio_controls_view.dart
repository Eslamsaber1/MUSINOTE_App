import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';
import 'package:musinote/core/widgets/gradient_scaffold.dart';
import 'package:musinote/features/audio_controls/presentation/views/widgets/build_header_card.dart';
import 'package:musinote/features/audio_controls/presentation/views/widgets/build_metronome_section.dart';

class AudioControlsView extends StatefulWidget {
  const AudioControlsView({super.key});

  static const String routeName = '/audio-controls';

  @override
  State<AudioControlsView> createState() => _AudioControlsViewState();
}

class _AudioControlsViewState extends State<AudioControlsView> {
  // EQ band values: range -12 to +12 dB, default 0
  final Map<String, double> _eqBands = {
    'Bass (60Hz)': 0.0,
    'Low Mid (230Hz)': 0.0,
    'Mid (910Hz)': 0.0,
    'High Mid (4kHz)': 0.0,
    'Treble (14kHz)': 0.0,
  };

  final List<String> bandIcons = [
    'assets/icons/red Circle.svg',
    'assets/icons/yellowCircle.svg',
    'assets/icons/pinkCircle.svg',
    'assets/icons/blueCircle.svg',
    'assets/icons/greenCircle.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: GradientScaffold(
        gradient: AppColors.linearGradient2,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kToolbarHeight + 40),
              buildHeaderCard(),
              SizedBox(height: 40),
              buildMetronomeSection(),
              SizedBox(height: 8),
              // Equalizer title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Equalizer',
                  style: AppTextStyles.semiBold24.copyWith(
                    color: Color(0xff5D50E5),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // EQ bands
              ..._eqBands.entries.toList().asMap().entries.map((entry) {
                final index = entry.key;
                final bandName = entry.value.key;
                final value = entry.value.value;
                return buildEQBand(bandName, value, bandIcons[index]);
              }),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }



  Widget buildEQBand(String label, double value, String iconPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label row with current dB value
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(iconPath),
                  const SizedBox(width: 8),
                  Text(
                    label,
                    style: AppTextStyles.regular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                '${value.toStringAsFixed(0)} dB',
                style: AppTextStyles.regular12.copyWith(color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 8),
          // Slider
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.black,
              inactiveTrackColor: Colors.white,
              thumbColor: Colors.white,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7),
              trackHeight: 3,
              overlayShape: SliderComponentShape.noOverlay,
            ),
            child: Slider(
              value: value,
              min: -12,
              max: 12,
              onChanged: (v) => setState(() => _eqBands[label] = v),
            ),
          ),

          // Range labels
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '-12 dB',
                  style: AppTextStyles.regular12.copyWith(color: Colors.white),
                ),
                Text(
                  '0',
                  style: AppTextStyles.semiBold12.copyWith(color: Colors.white),
                ),
                Text(
                  '+12 dB',
                  style: AppTextStyles.regular12.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),
        ],
      ),
    );
  }
}
