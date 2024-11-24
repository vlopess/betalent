import 'package:flutter/material.dart';
import 'package:mobile/controller/HomeController.dart';
import 'package:mobile/utils/AppAssets.dart';
import 'package:mobile/utils/AppColors.dart';
import 'package:mobile/view/home/componentes/BuildEmployeesList.dart';
import 'package:mobile/view/home/componentes/ButtonWithBadge.dart';
import 'package:mobile/view/home/componentes/SearchEmployeesContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  
  @override
  void initState() {
    super.initState();
    controller.listEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,    
        elevation: 0,
        toolbarHeight: 60,
        leadingWidth: 60,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.grey5,
                borderRadius: const BorderRadius.all(Radius.circular(50))
              ),
              child: const Center(
                child: Text("CG", style: TextStyle(fontWeight: FontWeight.w400),),
              ),
            ),
            ButtonWithBadge(
              name: AppAssets.bell,
              badgeText: "02",
              onPressed: (){}
            )
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 120),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  BuildEmployeesList(controller: controller),
                ],
              ),
            ),
            SearchEmployeesContainer(textController: controller.textController,),
          ],
        ),
      )
    );
  }
}
