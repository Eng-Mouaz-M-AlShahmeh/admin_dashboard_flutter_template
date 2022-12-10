/* Developed by Eng Mouaz M AlShahmeh */
import 'package:flutter/material.dart';

enum ButtonType { primary, plain }

class AppButton extends StatelessWidget {
  final ButtonType? type;
  final VoidCallback? onPressed;
  final String? text;

  const AppButton({super.key, this.type, this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          color: getButtonColor(context, type!),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(
          child: Text(text!,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: getTextColor(context, type!))),
        ),
      ),
    );
  }
}

Color getButtonColor(context, ButtonType type) {
  switch (type) {
    case ButtonType.primary:
      return Theme.of(context).primaryColor;
    case ButtonType.plain:
      return Colors.white;
    default:
      return Theme.of(context).primaryColor;
  }
}

Color getTextColor(context, ButtonType type) {
  switch (type) {
    case ButtonType.plain:
      return Theme.of(context).primaryColor;
    case ButtonType.primary:
      return Colors.white;
    default:
      return Theme.of(context).primaryColor;
  }
}
