import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/screens/category/category_list_item.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //option 1
      // bottomNavigationBar: AppButton(onTap: () {}, title: "title"),
      //option 2
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: SizedBox(
      //   width: double.infinity,
      //   child: FloatingActionButton.extended(
      //     label: Text("ljafls"),
      //     onPressed: () {},
      //   ),
      // ),
      backgroundColor: getBackgroundColor(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Category"),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 18,
                      crossAxisCount: 3,
                      children: List.generate(
                          40, (index) => const CategoryListItem()),
                    ),
                  ),
                )
              ],
            ),
          ),
          //3rd way
          // Positioned(
          //   // bottom: 20,
          //   child: Container(
          //       margin: marginH18,
          //       child: AppButton(onTap: () {}, title: "Create New 3")),
          // ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: marginH18,
                child: AppButton(onTap: () {}, title: "Create New")),
          ),
        ],
      ),
    );
  }
}
