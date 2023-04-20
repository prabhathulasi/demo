import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AppElevatedButon extends StatelessWidget {
  const AppElevatedButon(
      {Key? key,
      this.onPressed,
      required this.title,
      this.width,
      this.height,
      this.loading = false,
      this.textColor,
      this.buttonColor})
      : super(key: key);
  final double? width;
  final double? height;
  final Function(BuildContext context)? onPressed;
  final String? title;
  final Color? textColor;
  final Color? buttonColor;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width!,
        height: height!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: textColor!,
            backgroundColor: buttonColor!, // foreground (text) color
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title!,
                style: TextStyle(
                    color: textColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
               SizedBox(
                width: 2.0.w,
              ),
              Visibility(
                visible: loading,
                child: const SizedBox(
                    height: 20.0,
                    width: 20.0,
                    child: CircularProgressIndicator()),
              ),
            ],
          ),
          onPressed: () {
            onPressed!(context);
          },
        ));
  }
}
