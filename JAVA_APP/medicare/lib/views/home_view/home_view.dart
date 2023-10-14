import 'package:get/get.dart';
import 'package:medicare/consts/consts.dart';
import 'package:medicare/consts/lists.dart';
import 'package:medicare/res/components/custom_textfield.dart';
import 'package:medicare/views/category_view/category_view.dart';
import 'package:medicare/views/doctor_profile_view/doctor_profile_view.dart';
import 'package:medicare/views/labtest_view/labtest_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: AppStyles.bold(title: "${AppStrings.welcome} User",color:AppColors.whiteColor,size: 18.0),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            height : 100,
            color: AppColors.blueColor,
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hint: AppStrings.search,
                    textColor: AppColors.whiteColor,
                    bordrColor: AppColors.whiteColor
                  ),
                ),
                10.widthBox,
                IconButton(onPressed: () {}, icon: Icon(Icons.search,color: AppColors.whiteColor,)),
              ],
            ),
          ),
          20.heightBox,
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    itemBuilder: (BuildContext context,int index){
                      return GestureDetector(
                        onTap: () => Get.to(()=>const CategoryView()),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(right: 8),
                          child: Column(
                            children: [
                              Image.asset(
                                iconsList[index],
                                width: 30,
                                color: Vx.randomPrimaryColor,
                                ),
                              5.heightBox,
                              AppStyles.normal(title: iconsTitleList[index],color: AppColors.whiteColor),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                20.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child:AppStyles.bold(title: "Popular Doctors",size: 18.0,color: AppColors.blueColor),
                ),
                10.heightBox,
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => const DoctorProfileView());
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
                              AppStyles.normal(title: "${doctorNameList[index]}"),
                              5.heightBox,
                              AppStyles.normal(title: "${doctorSpecialityList[index]}",color: Colors.black54),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                5.heightBox,
                GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child:AppStyles.bold(title:"View All",color: AppColors.blueColor,size: 16.0),
                  ),
                ),
                20.heightBox,
                GestureDetector(
                  onTap: () {
                    Get.to(()=>const LabTest());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) => Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Image.asset(AppAssets.icInjection,width: 25,color: Vx.randomPrimaryColor,),
                          5.heightBox,
                          AppStyles.normal(title:"Lab Test",color: AppColors.whiteColor)
                        ],
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}