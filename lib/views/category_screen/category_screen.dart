import 'package:ecom_app_ddbahinicreation/constts/consts.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/bg_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Container - Column - image and text under column
    return bgWidget(Scaffold(
      appBar: AppBar(title: categories.text.fontFamily(bold).white.make()),
      body: Container(
        padding: EdgeInsets.all(12),
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
                  Image.asset()
                ],
              )
                  .box
                  .white
                  .roundedSM
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make();
            }),
      ),
    ));
  }
}
