import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medicare/consts/consts.dart';
import 'package:medicare/consts/lists.dart';
import 'package:medicare/views/doctor_profile_view/doctor_profile_view.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: AppStyles.bold(title: "CATEGORY DETAILED VIEW",size: 18.0,color: AppColors.whiteColor),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 190,
        ),
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.to(()=>const DoctorProfileView());
            },
            child: Container(
                            
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            margin: const EdgeInsets.only(right: 8),
                            height: 100,
                            width: 150,
                            child: Column(
                              children: [
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    color: AppColors.blueColor,
                                    child: Image.asset(
                                    AppAssets.icLogin,
                                    width: 100,
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                5.heightBox,
                                AppStyles.normal(title: "DOCTOR NAME"),
                                5.heightBox,
                                AppStyles.normal(title: "SPEIALIST",color: Colors.black54),
                              ],
                            ),
                          ),
          );
        },
      ),
    );
  }
}