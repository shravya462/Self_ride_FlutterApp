import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String txtTitle;
  final Color txtColor;
  final FontWeight txtFontWeight;
  final double txtFontSize;
  final TextAlign? textAlignment;
  final bool wrapValue;

  final TextOverflow? overflow;

  TextWidget({
    required this.txtTitle,
    required this.txtColor,
    required this.txtFontWeight,
    required this.txtFontSize,
    this.textAlignment,
    this.overflow = TextOverflow.visible,
    this.wrapValue = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txtTitle,
      softWrap: wrapValue,
      overflow: overflow,
      style: TextStyle(
        color: txtColor,
        fontWeight: txtFontWeight,
        fontSize: txtFontSize,
      ),
      textAlign: textAlignment != null ? textAlignment : TextAlign.start,
    );
  }
}
