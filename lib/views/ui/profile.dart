import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/components/toolbar.dart';
import 'package:online_shop/config/app_strings.dart';
import 'package:online_shop/constants/routes.dart';
import 'package:online_shop/views/ui/edit_profile_page.dart';
import 'package:online_shop/views/ui/welcome.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A2947),
      appBar: Toolbar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  break;
                case ProfileMenu.logout:
                  print('log out');
                  break;
                default:
              }
            },
            icon: const Icon(Icons.more_vert_rounded),
            
            itemBuilder: (context) {
              const Color(0xff1A2947);
              return [
                 PopupMenuItem(
                  value: ProfileMenu.edit,
                  child: CupertinoButton(
                  onPressed: () {
                    Routes.instance.push(widget: const EditProfilePage(), context: context);
                  }, 
                  child:  const Text(AppStrings.edit,
                  style: TextStyle(
                      color: Color(0xffFBD512),
                    ),),),
                ),
                  
                 PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: CupertinoButton(
                  onPressed: () {
                    Routes.instance.push(widget: const Welcome(), context: context);
                  }, 
                  child: const Text(AppStrings.logout,
                  style: TextStyle(
                      color: Color(0xffFBD512),
                    ),),),
                  
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              'assets/images/pato.jpg',
              width: 90,
              height: 90,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Patrick',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '47M',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    AppStrings.followers,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '119',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    AppStrings.posts,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '860',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    AppStrings.following,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }
}
