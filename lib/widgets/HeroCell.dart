import 'package:flutter/material.dart';

class HeroCell extends StatelessWidget {
  const HeroCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
        child: ListTile(
          title:ClipRRect(
            borderRadius: BorderRadius.circular(8),
          ),
        )

    );
  }
}
