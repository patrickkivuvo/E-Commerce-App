import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/constants/routes.dart';
import 'package:online_shop/views/ui/login_page.dart';
import 'package:online_shop/views/ui/sign_up.dart';
import 'package:online_shop/widgets/primary_button/primary_button.dart';
import 'package:online_shop/widgets/top_titles/top_titles.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                    subtitle: "Buy your fav sports shoes!", title: "Wecome"),
                Center(
                  child: Image.asset(
                    'assets/images/welcome.png',
                    alignment: Alignment.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: const Icon(
                        Icons.facebook,
                        size: 35,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      width: 7.0,
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: Image.asset(
                        'assets/images/google.png',
                        scale: 11.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7.0,
                ),
                PrimaryButton(
                  title: "Login",
                  onPressed: () {
                    Routes.instance.push(widget: const LoginPage(), context: context);
                  },
                ),
                const SizedBox(
                  height: 12.0,
                ),
                PrimaryButton(
                  title: "Sign Up",
                  onPressed: () {
                    Routes.instance.pushAndRemoveUntil(
                            widget: const SignUp(), context: context);
                  },
                ),
              ],
            )),
      ),
    );
  }
}
