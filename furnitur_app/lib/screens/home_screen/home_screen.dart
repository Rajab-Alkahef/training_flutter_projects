import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnitur_app/widgets/home_screen/body.dart';
import 'package:furnitur_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizedConfig.init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomeScreenBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        padding: EdgeInsets.only(left: SizedConfig.defaultSize * 2),
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          height: SizedConfig.defaultSize * 2,
        ),
      ),
      actions: [
        IconButton(
          // style: const ButtonStyle(
          //     backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
          onPressed: () {},
          icon: Row(
            children: [
              const SizedBox(width: 10),
              SvgPicture.asset(
                "assets/icons/scan.svg",
                height: SizedConfig.defaultSize * 2.4,
              ),
              const SizedBox(width: 10),
              const Text("Scan", style: TextStyle(fontWeight: FontWeight.w700)),
              SizedBox(width: SizedConfig.defaultSize),
            ],
          ),
        ),
        SizedBox(width: SizedConfig.defaultSize),
      ],
    );
  }
}
