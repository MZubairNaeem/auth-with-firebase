import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().gradiant2,
      body: Text(
          'Profile'
      ),
    );
  }
}
