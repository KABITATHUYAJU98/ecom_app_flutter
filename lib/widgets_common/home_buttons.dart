import 'package:ecom_app_ddbahinicreation/constts/consts.dart';

Widget homeButtons({width, height, icon, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.white.size(width, height).shadowSm.make();
}
