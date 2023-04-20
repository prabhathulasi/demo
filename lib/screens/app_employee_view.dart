import 'package:flutter/material.dart';

import 'package:flutter_application_1/theme/app_color.dart';
import 'package:flutter_application_1/widgets/app_elevated_button.dart';
import 'package:flutter_application_1/widgets/app_rich_text.dart';
import 'package:flutter_application_1/widgets/app_text_form_field.dart';
import 'package:flutter_application_1/widgets/flutter_rounded_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class AddEmployeeView extends StatefulWidget {
  const AddEmployeeView({super.key});

  @override
  State<AddEmployeeView> createState() => _AddEmployeeViewState();
}

class _AddEmployeeViewState extends State<AddEmployeeView> {

  String ?role;

  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: AppRichTextView(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            textColor: AppColors.colorwhite,
            title: "Add Employee Details",
          ),
        ),
        body: SizedBox(
          height: size.height,
          width: size.width,
        
          child: Column(
            children: [
              SizedBox(height: 24.h,),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 16.w),
                child: AppTextFormField(
                    inputDecoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        hintText: "Employee name",
                        hintStyle: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.colorc9e),
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          color: AppColors.colorblue,
                        )),
                    obscureText: false),
              ),
                  SizedBox(height: 23.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, ),
                    child: InkWell(
                      onTap: () {
                         showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Wrap(
                        alignment: WrapAlignment.center,

                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                role ="Product Designer";
                              });
                              Navigator.pop(context);
                            },
                            child: const ListTile(
                              
                              title: Text('Product Designer'),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                              setState(() {
                                role ="Flutter Developer";
                              });
                              Navigator.pop(context);
                            },
                            child: const ListTile(
                             
                              title: Text('Flutter Developer'),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                              setState(() {
                                role ="QA Tester";
                              });
                              Navigator.pop(context);
                            },
                            child: const ListTile(
                             
                              title: Text('QA Tester'),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                      },
                      child: AppTextFormField(
                        
                        isEnabled: false,
                      inputDecoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                          hintText: role??"Select role",
                          hintStyle: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.colorc9e),
                              suffixIcon:const Icon(Icons.arrow_drop_down,color: AppColors.colorblue,),
                          prefixIcon: const Icon(
                            Icons.cases_outlined,
                            color: AppColors.colorblue,
                          )),
                      obscureText: false),
                    ),
                  ),
                   SizedBox(height: 23.h,),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 16.w, ),
                     child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () async{
                              DateTime? newDateTime = await showRoundedDatePicker(
                               height: 560.h,
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(DateTime.now().year - 1),
                      lastDate: DateTime(DateTime.now().year + 1),
                      borderRadius: 16,
                    );
                            },
                            child: AppTextFormField(
                              isEnabled: false,
                                            inputDecoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                            hintText: "Today",
                            hintStyle: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.colorc9e),
                                
                            prefixIcon: const Icon(
                              Icons.calendar_month,
                              color: AppColors.colorblue,
                            )),
                                            obscureText: false),
                          ),
                        ),
                        SizedBox(width: 19.w,),
                       const Icon(Icons.arrow_right_alt,color: AppColors.colorblue,),
                         SizedBox(width: 19.w,),
                                     Expanded(
                      child: AppTextFormField(
                      inputDecoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                          hintText: "No Date",
                          hintStyle: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.colorc9e),
                              
                          prefixIcon: const Icon(
                            Icons.calendar_month,
                            color: AppColors.colorblue,
                          )),
                      obscureText: false),
                                     ),
                      ],
                     ),
                   ),
                  const Spacer(),
                  Divider( height: 2.h,),
                  Padding(
                    padding:  EdgeInsets.all(12.0.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppElevatedButon(
                          title: "Cancel",
                          height: 40.h,
                          width: 73.w,
                          textColor: AppColors.colorblue,
                          buttonColor: AppColors.color8ff,
                          onPressed: (context) {
                            
                          },
                        ),
                        SizedBox(width: 16.w,),
                        AppElevatedButon(
                          title: "Save",
                          height: 40.h,
                          width: 73.w,
                          textColor:AppColors.colorwhite,
                          buttonColor: AppColors.colorblue,
                          onPressed: (context) {
                            
                          },
                        )
                      ],
                    ),
                  )
          
            ],
          ),
        ));
  }
}
