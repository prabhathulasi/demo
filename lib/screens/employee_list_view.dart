import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/app_router.dart';
import 'package:flutter_application_1/theme/app_color.dart';
import 'package:flutter_application_1/utils/image_path.dart';
import 'package:flutter_application_1/widgets/app_rich_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class EmployeeListView extends StatefulWidget {
  const EmployeeListView({super.key});

  @override
  State<EmployeeListView> createState() => _EmployeeListViewState();
}

class _EmployeeListViewState extends State<EmployeeListView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        title:AppRichTextView(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          textColor: AppColors.colorwhite,
          title: "Employee List",

        ) ,
      ),
      body: SizedBox(
        height:size.height,
        width: size.width,
        child: Center(
          child: Image.asset(ImagePath.noEmployeeImage,width: 223.w,),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(context, AppRouter.addEmployee());
        },
        child: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.sp),
            color: AppColors.colorblue
          ),
          child:  Center(child: Icon(Icons.add,color: AppColors.colorwhite,weight: 18.w,),),
        ),
      ),
    );
  }
}