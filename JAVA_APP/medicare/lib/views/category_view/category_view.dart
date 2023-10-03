import 'package:get/get.dart';
import 'package:medicare/consts/consts.dart';
import 'package:medicare/consts/lists.dart';
import 'package:medicare/views/category_details_view/category_details_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: AppStyles.bold(title: AppStrings.category,size: 18.0,color: AppColors.whiteColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 190,
          ),
          itemCount: iconsList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Get.to(()=>const CategoryDetailsView());
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.bgDarkColor,
                  borderRadius: BorderRadius.circular(12),
                  
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    5.heightBox,
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        iconsList[index],
                        width: 80,
                        height: 80,
                        color: Vx.randomPrimaryColor,
                      ),
                    ),
                    20.heightBox,
                    AppStyles.bold(title: iconsTitleList[index],size: 18.0),
                    10.heightBox,
                    AppStyles.bold(title: "${specialist[index]} Specialists",size: 12.0,color: Colors.black54),
                    
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}