import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const String routeName = '/register_screen';
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
              Color(0xFF2D1F3D), // الدرجة الغامقة من الخلفية
              Color(0xFF0F0B15),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.05),
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.08,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),

                // الـ White/Grey Container اللي فيه الفورم
                Container(
                  width: screenWidth * 0.9,
                  padding: EdgeInsets.all(screenWidth * 0.06),
                  decoration: BoxDecoration(
                    color: const Color(
                      0xFFD9D9D9,
                    ), // اللون الرمادي الفاتح في الصورة
                    borderRadius: BorderRadius.circular(
                      40,
                    ), // زوايا دائرية كبيرة
                  ),
                  child: Column(
                    children: [
                      const CustomTextField(
                        label: 'Name',
                        hint: 'Please Enter Your Name',
                        prefixIcon: Icons.person_outline,
                        labelColor: Colors.black,
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      const CustomTextField(
                        label: 'Email',
                        hint: 'Please Enter Your Email',
                        prefixIcon: Icons.email_outlined,
                        labelColor: Colors.black,
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      const CustomTextField(
                        label: 'Password',
                        hint: 'Please Enter Your Password',
                        prefixIcon: Icons.lock_outline,
                        isPassword: true,
                        labelColor: Colors.black,
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      const CustomTextField(
                        label: 'Password Confirmation',
                        hint: 'Please Re-Enter Your Password',
                        prefixIcon: Icons.lock_reset,
                        isPassword: true,
                        labelColor: Colors.black,
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      const CustomTextField(
                        label: 'Phone',
                        hint: 'Please Enter Your Phone',
                        prefixIcon: Icons.phone_android,
                        labelColor: Colors.black,
                      ),

                      SizedBox(height: screenHeight * 0.04),

                      // زرار Sign Up
                      CustomButton(
                        text: 'Sign Up',
                        backgroundColor:
                            Colors.black, // الزرار لونه أسود في الصورة
                        textColor: Colors.white,
                        onPressed: () {},
                      ),

                      SizedBox(height: screenHeight * 0.02),

                      // Checkbox الشروط والأحكام
                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(
                              value: false,
                              onChanged: (val) {},
                              side: const BorderSide(color: Colors.black54),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Expanded(
                            child: Text(
                              'I hereby agree on these terms and conditions',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: screenWidth * 0.03,
                              ),
                            ),
                          ),
                        ],
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
