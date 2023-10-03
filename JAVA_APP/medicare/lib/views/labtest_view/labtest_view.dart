import 'package:get/get.dart';
import 'package:medicare/consts/consts.dart';
import 'package:medicare/consts/lists.dart';
import 'package:medicare/views/labtest_detail_view/labtest_detail_view.dart';

class LabTest extends StatelessWidget {
  const LabTest({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: AppStyles.bold(title: "Lab Tests",size: 18.0,color: AppColors.whiteColor),
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
              Get.to(()=>const LabTestDetailView());
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
                                    AppAssets.icInjection,
                                    width: 100,
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                5.heightBox,
                                AppStyles.normal(title: labList[index]),
                                5.heightBox,
                                
                              ],
                            ),
                          ),
          );
        },
      ),

    );
  }
}