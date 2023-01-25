import 'package:flutter/material.dart';
import 'package:moments/resources/colors.dart';

class AddMoment extends StatefulWidget {
  const AddMoment({Key? key}) : super(key: key);

  @override
  State<AddMoment> createState() => _AddMomentState();
}

class _AddMomentState extends State<AddMoment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().gradiant2,
      body: Text(
          'Add Moments'
      ),
    );
  }
}
