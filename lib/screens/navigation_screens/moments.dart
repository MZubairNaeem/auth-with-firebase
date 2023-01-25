import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class Moments extends StatefulWidget {
  const Moments({Key? key}) : super(key: key);

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().gradiant2,
      body: Text(
        'Moments'
      ),
    );
  }
}
