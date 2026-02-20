import 'package:flutter/material.dart';
import 'package:musinote/features/authentication/presentation/ui_screen/forget_password.dart';
import 'package:musinote/features/authentication/presentation/ui_screen/registor_screen.dart';
import 'package:musinote/features/home/presentation/ui_screen/music_selection.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import '../components/social_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            colors: [Color(0xFF6A1B9A), Color(0xFF0F0B15)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.01),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: screenWidth * 0.06,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.02),

                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: screenHeight * 0.01),

                Text(
                  'Enter your credentials to access your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: screenWidth * 0.035,
                  ),
                ),

                SizedBox(height: screenHeight * 0.05),

                const CustomTextField(
                  label: 'Email',
                  hint: 'Enter Your Email',
                  prefixIcon: Icons.email_outlined,
                  labelColor: Colors.white,
                ),
                SizedBox(height: screenHeight * 0.025),
                const CustomTextField(
                  label: 'Password',
                  hint: 'Enter Your Password',
                  prefixIcon: Icons.lock_outline,
                  isPassword: true,
                  labelColor: Colors.white,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.05,
                          height: screenWidth * 0.05,
                          child: Checkbox(
                            value: false,
                            onChanged: (val) {},
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          'Remember me',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.03,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.03,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: screenHeight * 0.03),

                CustomButton(
                  text: 'Sign in',
                  backgroundColor: const Color(0xFF2E2E2E),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MusicSelectionScreen(),
                      ),
                    );
                  },
                ),

                SizedBox(height: screenHeight * 0.04),

                Text(
                  'Or Continue With',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: screenWidth * 0.035,
                    decoration: TextDecoration.underline,
                  ),
                ),

                SizedBox(height: screenHeight * 0.025),

                SocialLoginButton(
                  text: 'Continue with Google',
                  iconData: Icons.g_mobiledata,
                  iconColor: Colors.redAccent,
                  onTap: () {},
                ),

                SocialLoginButton(
                  text: 'Continue with Facebook',
                  iconData: Icons.facebook,
                  iconColor: const Color(0xFF1877F2),
                  onTap: () {},
                ),

                SocialLoginButton(
                  text: 'Continue with Phone Number',
                  iconData: Icons.phone_android,
                  iconColor: Colors.greenAccent,
                  onTap: () {},
                ),

                SizedBox(height: screenHeight * 0.04),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t Have an Account? ",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.035,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
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
