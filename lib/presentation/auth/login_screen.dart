// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:promilo/application/login_provider.dart';
import 'package:promilo/application/loginscreen_provider.dart';
import 'package:promilo/core/constants/constants.dart';
import 'package:promilo/domain/models/api_model.dart';
import 'package:promilo/presentation/utils/colors.dart';
import 'package:promilo/presentation/widgets/custom_button.dart';
import 'package:promilo/presentation/widgets/custom_textfield.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  bool isChecked = false;

  void onChanged() {
    isChecked = true;
  }

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);
    final loginProvider = Provider.of<LoginScreenProvider>(context);
    return Scaffold(
      backgroundColor: kwhiteColor,
      appBar: AppBar(
        backgroundColor: kwhiteColor,
        title: const Text(
          'promilo',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Hi,Welcome Back!',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 19, 54, 85)),
              ),
              kheight40,
              CustomTextField(
                text: 'Please Sign in to continue',
                controller: loginProvider.usernameController,
                hintText: 'Enter Email or Mob No',
                obscureText: false,
              ),
              kheight10,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Sign In With OTP',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: lightBlue),
                    ),
                  ],
                ),
              ),
              kheight5,
              CustomTextField(
                text: 'Password',
                controller: loginProvider.passwordController,
                hintText: 'Enter Pasword',
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? newValue) {},
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        const Text(
                          'Remember Me',
                          style: TextStyle(fontSize: 15, color: kgreyColor),
                        )
                      ],
                    ),
                    const Text(
                      'Forget Password',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: lightBlue),
                    ),
                  ],
                ),
              ),
              kheight20,
              CustomButton(
                onPressed: loginProvider.isButtonEnabled
                    ? () {
                        apiProvider.postData(
                            ApiModel(
                              username: loginProvider.usernameController.text,
                              password: loginProvider.passwordController.text,
                            ),
                            context);
                      }
                    : null,
                borderColor:
                    Provider.of<LoginScreenProvider>(context).isButtonEnabled
                        ? lightBlue
                        : kwhiteColor,
              ),
              kheight10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              kheight20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'assets/images/google.png',
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset(
                        'assets/images/linkedin.png',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'assets/images/facebook.png',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'assets/images/instgram.png',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'assets/images/whatsapp.png',
                      ),
                    ),
                  ],
                ),
              ),
              kheight20,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Business User?',
                      style: TextStyle(
                        fontSize: 18,
                        color: kgreyColor,
                      ),
                    ),
                    kwidth30,
                    Text(
                      "Don't have an account",
                      style: TextStyle(
                        fontSize: 18,
                        color: kgreyColor,
                      ),
                    ),
                  ],
                ),
              ),
              kheight10,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Login Here',
                      style: TextStyle(
                        fontSize: 18,
                        color: loginColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 18,
                        color: loginColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              kheight20,
              const Text(
                'By continuing,you agree to',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 175, 197, 212)),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Promilo's",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 175, 197, 212)),
                  ),
                  Text(
                    "Terms of Use&Privacy Policy",
                    style: TextStyle(fontSize: 16, color: loginColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
