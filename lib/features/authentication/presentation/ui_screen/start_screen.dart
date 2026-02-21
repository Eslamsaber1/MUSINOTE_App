import 'package:flutter/material.dart';
import 'package:musinote/features/authentication/presentation/ui_screen/login_screen.dart';
import 'package:musinote/features/authentication/presentation/ui_screen/registor_screen.dart';
import '../components/custom_button.dart';
import '../components/journey_card.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2D1F3D), Color(0xFF0F0B15)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: screenWidth * 0.045,
                            child: Icon(
                              Icons.music_note,
                              color: Colors.black,
                              size: screenWidth * 0.05,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            'MusiNote',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.045,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),

                Text(
                  'Learn to Play',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Easy and Fun Way',
                  style: TextStyle(
                    color: const Color(0xFFC366B9),
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: screenHeight * 0.015),
                Text(
                  'Interactive lessons, clear music sheets, and track your progress step by step',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: screenWidth * 0.03,
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/startpage1.png',
                    fit: BoxFit.cover,
                    height: screenHeight * 0.18,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey,
                      height: screenHeight * 0.18,
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.04),

                CustomButton(
                  text: 'Start Learning Free',
                  backgroundColor: const Color(0xFFC366B9),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(height: screenHeight * 0.015),
                CustomButton(
                  text: 'Watch Lessons',
                  backgroundColor: const Color(0xFFD9D9D9),
                  textColor: Colors.black87,
                  onPressed: () {},
                ),

                SizedBox(height: screenHeight * 0.04),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Start Your Journey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),

                const JourneyCard(
                  title: 'Beginner Lessons',
                  subtitle: 'Start from zero with simple steps',
                  imagePath: 'assets/images/startpage2.png',
                ),
                SizedBox(height: screenHeight * 0.02),
                const JourneyCard(
                  title: 'Reading Music Sheets',
                  subtitle: 'Learn to read musical symbols',
                  imagePath: 'assets/images/startpage3.png',
                ),

                SizedBox(height: screenHeight * 0.04),

                Container(
                  padding: EdgeInsets.all(screenWidth * 0.05),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF4A148C), Color(0xFF311B92)],
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Start Your Musical Journey',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      Text(
                        'Join thousands of learners worldwide',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: screenWidth * 0.03,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      CustomButton(
                        text: 'Create Free Account',
                        backgroundColor: const Color(0xFFD9D9D9),
                        textColor: Colors.black,
                        height: screenHeight * 0.055,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
