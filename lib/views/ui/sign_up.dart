import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/config/app_strings.dart';
import 'package:online_shop/constants/routes.dart';
import 'package:online_shop/views/ui/login_page.dart';
import 'package:online_shop/views/ui/mainscreen.dart';
import 'package:online_shop/widgets/primary_button/primary_button.dart';
import 'package:online_shop/widgets/top_titles/top_titles.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A2947),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitles(
                  subtitle: "Create Account",
                  title: "StrideMax: Sporty Soles Hub"),
              const SizedBox(
                height: 46.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: AppStrings.username,
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  ),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: AppStrings.email,
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: AppStrings.phone,
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(
                    Icons.phone_outlined,
                    color: Colors.white,
                  ),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: AppStrings.password,
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(
                    Icons.password_sharp,
                    color: Colors.white,
                  ),
                  suffixIcon: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      padding: EdgeInsets.zero,
                      child: const Icon(
                        Icons.visibility,
                        color: Colors.white,
                      )),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 36.0,
              ),
              PrimaryButton(
                title: "Create an account",
                onPressed: () {
                  Routes.instance.pushAndRemoveUntil(
                      widget: MainScreen(), context: context);
                },
              ),
              const SizedBox(
                height: 24.0,
              ),
              const Center(
                  child: Text(
                "I have already an account?",
                style: TextStyle(color: Colors.white),
              )),
              const SizedBox(
                height: 12.0,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      Routes.instance.pushAndRemoveUntil(
                          widget: const LoginPage(), context: context);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.amber,
                    ),
                    child: const Text(
                      AppStrings.login,
                      style: TextStyle(decoration: TextDecoration.underline),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
