import 'package:flutter/material.dart';
import 'package:online_shop/components/toolbar.dart';
import 'package:online_shop/config/app_strings.dart';
import 'package:online_shop/styles/app_colors.dart';
import 'package:online_shop/styles/app_text.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A2947),
      appBar: const Toolbar(title: AppStrings.editProfile),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/pato.jpg',
                      width: 120,
                      height: 120,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                              color: AppColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: const Icon(
                            Icons.edit,
                            size: 20,
                            color: Colors.black,
                          )))
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "First name",
                  hintStyle: const TextStyle(color: Colors.white),
                  labelText: "First name",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  border: const UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: const Color(0xFFD9D9D9).withOpacity(0.6),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Last name",
                  hintStyle: const TextStyle(color: Colors.white),
                  labelText: "Last name",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  border: const UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: const Color(0xFFD9D9D9).withOpacity(0.6),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Phone number",
                  hintStyle: const TextStyle(color: Colors.white),
                  labelText: "Phone number",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  border: const UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: const Color(0xFFD9D9D9).withOpacity(0.6),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Location",
                  hintStyle: const TextStyle(color: Colors.white),
                  labelText: "Location",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  border: const UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: const Color(0xFFD9D9D9).withOpacity(0.6),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Birthday",
                  hintStyle: const TextStyle(color: Colors.white),
                  labelText: "Birthday",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  border: const UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: const Color(0xFFD9D9D9).withOpacity(0.6),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
                decoration: BoxDecoration(
                    color: AppColors.fieldColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.gender,
                      style: AppText.body1.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: const Text(AppStrings.male),
                            value: Gender.male,
                            visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            title: const Text(AppStrings.female),
                            value: Gender.female,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            title: const Text(AppStrings.other),
                            value: Gender.other,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.other;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
