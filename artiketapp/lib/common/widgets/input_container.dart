import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final Color? backgroundColor;
  final BoxShadow? boxShadow;
  final BoxBorder? boxBorder;
  const InputContainer(
      {Key? key,
      required this.child,
      this.radius,
      this.backgroundColor,
      this.boxShadow,
      this.boxBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return createBody();
  }

  Widget createBody() {
    return Container(
      decoration: BoxDecoration(
        //color: backgroundColor ?? Colors.transparent,
        color: backgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(radius ?? 4),
        //border: Border.all(color: Colors.red)
        border: boxBorder,
        // boxShadow: [
        //   boxShadow ??
        //       BoxShadow(
        //         color: Color.fromARGB(255, 212, 212, 212),
        //         blurRadius: 0.0,
        //         spreadRadius: 1,
        //         //offset: const Offset(2, 2),
        //         offset: const Offset(0, 0),
        //       )
        // ],
      ),
      child: child,
    );
  }
}
