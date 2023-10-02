import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medicare/consts/colors.dart';
import 'package:medicare/consts/consts.dart';
import 'package:medicare/consts/fonts.dart';
import 'package:medicare/consts/strings.dart';
import 'package:medicare/res/components/custom_button.dart';


class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDarkColor,
      appBar: AppBar(
        elevation: 0.0,
        title: AppStyles.bold(title: "Doctor Profile",size: 18.0,color: AppColors.whiteColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                height: 100,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(12),
                 ),
        
                 child: Row(
                   children: [
                    CircleAvatar(child: Image.asset(AppAssets.icSignup),radius: 40,),
                    10.widthBox,
                     Expanded(
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppStyles.bold(title: "Doctor Name",size: 14.0,),
                            AppStyles.bold(title: "Category",size: 12.0,),
                            const Spacer(),
                            VxRating(onRatingUpdate: (value) {},
                            selectionColor: AppColors.yellowcolor,
                            maxRating: 5,
                              count: 5,
                              value: 4,
                              stepInt: true,
                            )
                          ],
                          
                       ),
                     ),
                     AppStyles.bold(title: "See all reviews",size: 12.0,color: AppColors.blueColor),
                   ],
                 ),
              ),
        
              10.heightBox,
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title : AppStyles.bold(title: "Phone Number",color: AppColors.textColor),
                      subtitle: AppStyles.normal(title: "+1234567890",color: AppColors.textColor.withOpacity(0.5),
                      size: 12.0,
                      ),
                      trailing: Container(
                        width: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.yellowcolor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.phone,color: AppColors.whiteColor,)),
        
        
                    ),
                    10.heightBox,
                    AppStyles.bold(title: "About",color: AppColors.textColor,size: 16.0),
                    5.heightBox,
                    AppStyles.normal(
                      title: "Dr. [Your Name] is a [specialty] physician with [number] years of experience. He/She is passionate about providing his/her patients with the best possible care and is committed to staying up-to-date on the latest medical advancements\n. Dr. [Your Name] is known for his/her warm bedside manner and his/her ability to connect with his/her patients on a personal level. He/She is also a strong advocate for patient education and empowerment.",
                    color: AppColors.textColor,
                    size: 16.0),
                    10.heightBox,
                    AppStyles.bold(title: "Address",color: AppColors.textColor,size: 16.0),
                    5.heightBox,
                    AppStyles.normal(
                      title: "Address",
                    color: AppColors.textColor,
                    size: 16.0),
                    10.heightBox,
                    AppStyles.bold(title: "Working Time",color: AppColors.textColor,size: 16.0),
                    5.heightBox,
                    AppStyles.normal(
                      title: "9:00am - 5:00pm",
                    color: AppColors.textColor,
                    size: 16.0),
                    10.heightBox,
                    AppStyles.bold(title: "Services",color: AppColors.textColor,size: 16.0),
                    5.heightBox,
                    AppStyles.normal(
                      title: "SERVICES UNDER ACTION ....",
                    color: AppColors.textColor,
                    size: 16.0),
        
        
                  ],
                ),
              ),
              
            ],
            
        
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomButton(buttonText: "Book an Appointment",
        onTap: () {
          },),
      ),
    );
  }
}