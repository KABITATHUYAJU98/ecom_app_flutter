import 'package:ecom_app_ddbahinicreation/constts/consts.dart';
import 'package:ecom_app_ddbahinicreation/constts/list.dart';
import 'package:ecom_app_ddbahinicreation/views/profile_screen/components/detail_card.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/bg_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
        child: Column(children: [
          //Profile Button to edit
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                )).onTap(() {}),
          ),
          //Section for User's Detail
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Image.asset(imgProfile2, width: 70, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy User".text.fontFamily(semibold).white.make(),
                    5.heightBox,
                    "user@gmail.com".text.white.make()
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: whiteColor),
                    ),
                    onPressed: () {},
                    child: logout.text.fontFamily(semibold).white.make())
              ],
            ),
          ),

          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailCard(
                  count: "00",
                  title: "in your cart",
                  width: context.screenWidth / 4),
              detailCard(
                  count: "35",
                  title: "in your wishlist",
                  width: context.screenWidth / 4),
              detailCard(
                  count: "600",
                  title: "in your orders",
                  width: context.screenWidth / 4)
            ],
          ),

          //Section for buttons

          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const Divider(
                color: lightGrey,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.asset(
                  profileButtonsIcons[index],
                  width: 22,
                ),
                title: profileButtonsList[index]
                    .text
                    .fontFamily(bold)
                    .color(darkFontGrey)
                    .make(),
              );
            },
            itemCount: profileButtonsList.length,
          )
              .box
              .white
              .rounded
              .padding(const EdgeInsets.symmetric(horizontal: 16))
              .margin(const EdgeInsets.all(12))
              .shadowSm
              .make()
              .box
              .color(redColor)
              .make()
        ]),
      ),
    ));
  }
}
