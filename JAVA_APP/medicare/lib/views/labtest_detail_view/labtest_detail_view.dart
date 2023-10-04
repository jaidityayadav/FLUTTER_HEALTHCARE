import 'package:get/get.dart';
import 'package:medicare/bookin_view/booking_view.dart';
import 'package:medicare/consts/consts.dart';
import 'package:medicare/res/components/custom_button.dart';
import 'package:medicare/views/arduino_view/arduino_view.dart';

class LabTestDetailView extends StatelessWidget {
  const LabTestDetailView({super.key});

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
                    CircleAvatar(radius: 40,child: Image.asset(AppAssets.icInjection),),
                    10.widthBox,
                     Expanded(
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppStyles.bold(title: "Labtest Name",size: 14.0,),

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
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    10.heightBox,
                    AppStyles.bold(title: "About",color: AppColors.textColor,size: 16.0),
                    5.heightBox,
                    AppStyles.normal(
                      title: "I am a lab technician with 5 years of experience in a variety of settings, including hospitals, clinics, and research labs. I am skilled in performing a wide range of lab tests, including blood work, urinalysis, and microbiology. I am also proficient in using laboratory equipment and software. I am committed to providing accurate and timely results to my patients and clients.",
                    color: AppColors.textColor,
                    size: 16.0),
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
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.book_online_outlined),
              onPressed: () {
                Get.to(()=> BookingView());
              },
            ),
            IconButton(
              icon: Icon(Icons.sensors_sharp),
              onPressed: () {
                Get.to(()=> ArduinoView());
              },
            ),
          ],
        ),
      ),
      
    );
  }
}

