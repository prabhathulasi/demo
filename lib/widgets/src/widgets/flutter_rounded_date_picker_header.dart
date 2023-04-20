import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_color.dart';
import 'package:flutter_application_1/widgets/app_elevated_button.dart';
import '../../src/era_mode.dart';
import '../../src/material_rounded_date_picker_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlutterRoundedDatePickerHeader extends StatelessWidget {
  const FlutterRoundedDatePickerHeader(
      {Key? key,
      required this.selectedDate,
      required this.mode,
      required this.onModeChanged,
      required this.orientation,
      required this.era,
      required this.borderRadius,
      this.imageHeader,
      this.description = "",
      this.fontFamily,
      this.style})
      : super(key: key);

  final DateTime selectedDate;
  final DatePickerMode mode;
  final ValueChanged<DatePickerMode> onModeChanged;
  final Orientation orientation;
  final MaterialRoundedDatePickerStyle? style;

  /// Era custom
  final EraMode era;

  /// Border
  final double borderRadius;

  ///  Header
  final ImageProvider? imageHeader;

  /// Header description
  final String description;

  /// Font
  final String? fontFamily;

  void _handleChangeMode(DatePickerMode value) {
    if (value != mode) onModeChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    final ThemeData themeData = Theme.of(context);
    final TextTheme headerTextTheme = themeData.primaryTextTheme;
    Color? dayColor;
    Color? yearColor;
    switch (themeData.primaryColorBrightness) {
      case Brightness.light:
        dayColor = mode == DatePickerMode.day ? Colors.black87 : Colors.black54;
        yearColor =
            mode == DatePickerMode.year ? Colors.black87 : Colors.black54;
        break;
      case Brightness.dark:
        dayColor = mode == DatePickerMode.day ? Colors.white : Colors.white70;
        yearColor = mode == DatePickerMode.year ? Colors.white : Colors.white70;
        break;
    }

    if (style?.textStyleDayButton?.color != null) {
      style?.textStyleDayButton =
          style?.textStyleDayButton?.copyWith(color: dayColor);
    }

    if (style?.textStyleDayButton?.fontFamily != null) {
      style?.textStyleDayButton =
          style?.textStyleDayButton?.copyWith(fontFamily: fontFamily);
    }



  

    
   



    return Column(
       mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.only(top:24.h, left: 16.w,right: 16.w),
          child: Row(
            children: [
            Expanded(
              child: AppElevatedButon(
                height: 36.h,
                width: 174.w,
                title: "Today",buttonColor: AppColors.color8ff, textColor: AppColors.colorblue,onPressed: (context) {
                
              },),
            ),
            SizedBox(width: 16.w,),
              Expanded(
                child: AppElevatedButon(
                height: 36.h,
                width: 174.w,
                title: "Next Monday",buttonColor:AppColors.colorblue , textColor:AppColors.color8ff ,onPressed: (context) {
                
                          },),
              ),
            ],
          ),
        ),
         Padding(
          padding:  EdgeInsets.only(top:24.h, left: 16.w,right: 16.w),
          child: Row(
            children: [
            Expanded(
              child: AppElevatedButon(
                
                height: 36.h,
                width: 174.w,
                title: "Next Tuesday",buttonColor: AppColors.color8ff, textColor: AppColors.colorblue,onPressed: (context) {
                
              },),
            ),
            SizedBox(width: 16.w,),
              Expanded(
                child: AppElevatedButon(
                height: 36.h,
                width: 174.w,
                title: "After 1 week",buttonColor: AppColors.color8ff, textColor:AppColors.colorblue ,onPressed: (context) {
                
                          },),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}

class _DateHeaderButton extends StatelessWidget {
  const _DateHeaderButton({
    Key? key,
    this.onTap,
    this.color,
    this.child,
  }) : super(key: key);

  final VoidCallback? onTap;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Material(
      type: MaterialType.button,
      color: color,
      child: InkWell(
        borderRadius: kMaterialEdges[MaterialType.button],
        highlightColor: theme.highlightColor,
        splashColor: theme.splashColor,
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: child,
        ),
      ),
    );
  }
}
