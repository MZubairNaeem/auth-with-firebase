import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().gradiant2,
      body: Text(
          'Search'
      ),
    );
  }
}
