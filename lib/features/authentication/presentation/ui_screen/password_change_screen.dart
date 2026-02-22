import 'package:flutter/material.dart';
import 'package:musinote/features/authentication/presentation/ui_screen/login_screen.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class PasswordChangeScreen extends StatelessWidget {
  const PasswordChangeScreen({super.key});

  static const String routeName = '/password_change_screen';
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
                  'Password Change',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: screenHeight * 0.04),

                Container(
                  width: screenWidth * 0.9,
                  padding: EdgeInsets.all(screenWidth * 0.06),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      const CustomTextField(
                        label: 'Enter Password',
                        hint: 'Please Enter Your New Password',
                        prefixIcon: Icons.lock_outline,
                        isPassword: true,
                        labelColor: Colors.black, 
                      ),

                      SizedBox(height: screenHeight * 0.02),

                      CustomButton(
                        text: 'Enter',
                        backgroundColor: const Color(0xFF2E2E2E),
                        textColor: Colors.white,
                        onPressed: () {
                        },
                      ),

                      SizedBox(height: screenHeight * 0.04),

                      const CustomTextField(
                        label: 'Re-enter Password',
                        hint: 'Please Re-enter Your New Password',
                        prefixIcon: Icons.lock_reset,
                        isPassword: true,
                        labelColor: Colors.black,
                      ),

                      SizedBox(height: screenHeight * 0.02),

                      CustomButton(
                        text: 'Next',
                        backgroundColor: const Color(0xFF2E2E2E),
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            LoginScreen.routeName,
                            (route) => false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
