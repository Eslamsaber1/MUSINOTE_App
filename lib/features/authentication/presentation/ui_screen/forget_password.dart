import 'package:flutter/material.dart';
import 'package:musinote/features/authentication/presentation/ui_screen/password_change_screen.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
            colors: [
              Color(0xFF8E8FFA), 
              Color(0xFF0F0B15),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),

                SizedBox(height: screenHeight * 0.05),

                Text(
                  'Account Recovery',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: screenHeight * 0.06),

                const CustomTextField(
                  label: 'Email',
                  hint: 'Please Enter Your Email',
                  prefixIcon: Icons.email_outlined,
                  labelColor: Colors.white,
                ),

                SizedBox(height: screenHeight * 0.02),

                CustomButton(
                  text: 'Enter',
                  backgroundColor: const Color(
                    0xFF2E2E2E,
                  ),
                  textColor: Colors.white,
                  onPressed: () {
                  },
                ),

                SizedBox(height: screenHeight * 0.05),

                Text(
                  'You will receive a one time password\nShortly on your registered email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: screenWidth * 0.035,
                    height: 1.5,
                  ),
                ),

                SizedBox(height: screenHeight * 0.05),

                const CustomTextField(
                  label: 'Please Enter Your OTP',
                  hint: 'Please Enter Your OTP',
                  prefixIcon: Icons.vibration, 
                  labelColor: Colors.white,
                ),

                SizedBox(height: screenHeight * 0.03),

                CustomButton(
                  text: 'Password Change',
                  backgroundColor: const Color(0xFF2E2E2E),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordChangeScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
