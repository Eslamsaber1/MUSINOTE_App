import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/widgets/build_search_instrument_text_field.dart';
import 'package:musinote/core/widgets/gradient_scaffold.dart';
import 'package:musinote/features/instrument/presentation/views/widgets/build_instrument_appBar.dart';
import 'package:musinote/features/instrument/presentation/views/widgets/build_instrument_card.dart';
import 'package:musinote/features/instrument/presentation/views/widgets/build_instrument_info.dart';


class InstrumentView extends StatelessWidget {
  const InstrumentView({super.key});

  static const String routeName = '/instrument';
  @override
  Widget build(BuildContext context) {
    final instruments = [
      InstrumentItem(
        name: 'Piano',
        type: 'Keyboard',
        lessons: 156,
        level: 'Beginner',
        imagePath: 'assets/images/piano_instrument.png',
      ),
      InstrumentItem(
        name: 'Guitar',
        type: 'Strings',
        lessons: 195,
        level: 'Beginner',
        imagePath: 'assets/images/guitar-lessons-l.png',
      ),
      InstrumentItem(
        name: 'Violin',
        type: 'Strings',
        lessons: 122,
        level: 'Beginner',
        imagePath: 'assets/images/guitar2.png',
      ),
      InstrumentItem(
        name: 'SaxoPhone',
        type: 'Woodwind',
        lessons: 119,
        level: 'Beginner',
        imagePath: 'assets/images/saxophone.png',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: buildInstrumentAppBar(context),
      body: GradientScaffold(
        gradient: AppColors.radialGradient,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: kToolbarHeight + 40),
                buildInstrumentInfo(),
                const SizedBox(height: 27),
                buildSearchInstrumentTextField(),
                const SizedBox(height: 23),
                // Instrument cards
                ...instruments.map((item) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: buildInstrumentCard(item),
                )),
          
                const SizedBox(height: 16),
              ],
            ),
          ),
        )
      ),
    );
  }
}