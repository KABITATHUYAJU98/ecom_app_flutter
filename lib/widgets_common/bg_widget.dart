//most of the pages have same background..so to use the widget commonly we will create bg widget
import 'package:ecom_app_ddbahinicreation/constts/consts.dart';

Widget bgWidget(Widget? child) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imgBackground), fit: BoxFit.fill)),
    child: child,
  );
}
//child --- we will provide it under screen
