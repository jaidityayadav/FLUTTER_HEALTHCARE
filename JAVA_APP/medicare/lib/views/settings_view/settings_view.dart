import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medicare/consts/consts.dart';
import 'package:medicare/consts/lists.dart';
import 'package:medicare/views/login_view/login_view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: AppStyles.bold(title: AppStrings.settings,size: 18.0,color: AppColors.whiteColor),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person_2_outlined)),
            title: AppStyles.bold(title: "krish",),
            subtitle: AppStyles.normal(title: "temp@mail.com"),

          ),
          const Divider(),
          20.heightBox,
          ListView(
            shrinkWrap: true,
            children: List.generate(settingsList.length, (index) => ListTile(
              onTap: () {
                Get.to(() => const LoginView());
              },
              leading: Icon(settingsIconsList[index]),
              title: AppStyles.bold(title: settingsList[index],size: 16.0),
            )),
          )
        ],
      ),
    );
  }
}

