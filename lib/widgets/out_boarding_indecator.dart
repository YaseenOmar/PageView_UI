import 'package:flutter/material.dart';

class OutBoardingIndecator extends StatelessWidget {

  final bool selected ;
  final double marginEnd ;


  OutBoardingIndecator({required this.selected, this.marginEnd = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 20,
        height: 10,
        margin: EdgeInsetsDirectional.only(end: marginEnd),
        decoration: BoxDecoration(
            color: selected ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(10)
        )
    );
  }
}
