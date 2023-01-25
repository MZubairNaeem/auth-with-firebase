import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class SaveMoment extends StatefulWidget {
  const SaveMoment({Key? key}) : super(key: key);

  @override
  State<SaveMoment> createState() => _SaveMomentState();
}

class _SaveMomentState extends State<SaveMoment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().gradiant2,
      body: Text(
          'save'
      ),
    );
  }
}
