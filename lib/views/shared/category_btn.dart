import 'package:flutter/material.dart';
import 'package:online_shop/views/shared/appstyle.dart';

class CategoryBtn extends StatelessWidget {
  final String label;
  final Color buttonClr;
  final void Function()? onPress;
  const CategoryBtn(
      {super.key, required this.label, required this.buttonClr, this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      child: Container(
        height: 45,
        width: MediaQuery.of(context).size.width * 0.225,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: buttonClr, style: BorderStyle.solid),
            borderRadius: const BorderRadius.all(Radius.circular(9))),
        child: Center(
            child:
                Text(label, style: appstyle(20, buttonClr, FontWeight.w600))),
      ),
    );
  }
}
