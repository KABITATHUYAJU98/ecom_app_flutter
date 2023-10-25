import 'package:ecom_app_ddbahinicreation/constts/consts.dart';
import 'package:ecom_app_ddbahinicreation/constts/list.dart';
import 'package:ecom_app_ddbahinicreation/views/category_screen/category_details.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/bg_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Container - Column - image and text under column
    return bgWidget(Scaffold(
      appBar: AppBar(title: categories.text.fontFamily(bold).white.make()),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 200,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoryImages[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  categoriesList[index]
                      .text
                      .color(darkFontGrey)
                      .align(TextAlign.center)
                      .make(),
                ],
              )
                  .box
                  .white
                  .roundedSM
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(() {
                Get.to(() => CategoryDetails(title: categoriesList[index]));
                // whatever we click on the category it will show the same title in category detail page.
              });
            }),
      ),
    ));
  }
}
