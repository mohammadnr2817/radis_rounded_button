library radis_rounded_button;

import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final Color backgroundColor;
  final Color? borderColor;
  final bool disabled;
  final double elevation;
  final Widget? leadingWidget;
  final bool loading;
  final AlignmentGeometry leadingAlignment;
  final Widget? loadingWidget;
  final Function() onPressed;
  final EdgeInsetsGeometry padding;
  final Color progressBarColor;
  final double progressBarSize;
  final double radius;
  final Widget widget;

  const RoundedButton({
    Key? key,
    this.leadingAlignment = Alignment.centerRight,
    this.backgroundColor = Colors.blue,
    this.borderColor,
    this.disabled = false,
    this.elevation = 0,
    this.leadingWidget,
    this.loading = false,
    this.loadingWidget,
    required this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
    this.progressBarColor = Colors.white,
    this.progressBarSize = 25,
    this.radius = 7,
    required this.widget,
  }) : super(key: key);

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: widget.backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
                side: BorderSide(
                  color: widget.borderColor ?? Colors.transparent,
                )),
            elevation: widget.elevation,
            padding: widget.padding),
        onPressed: widget.disabled ? () {} : widget.onPressed,
        child: widget.loading
            ? widget.loadingWidget ??
                Center(
                    child: SizedBox(
                        width: widget.progressBarSize,
                        height: widget.progressBarSize,
                        child: CircularProgressIndicator(
                            color: widget.progressBarColor)))
            : Stack(
                children: [
                  Center(child: widget.widget),
                  Align(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 18),
                        child: widget.leadingWidget),
                    alignment: widget.leadingAlignment,
                  )
                ],
              ));
  }
}
