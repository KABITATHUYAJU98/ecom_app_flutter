import 'package:ecom_app_ddbahinicreation/constts/consts.dart';
import 'package:ecom_app_ddbahinicreation/constts/list.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/home_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchAnything,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),
          5.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  //Creating swappers for brand | also create list for brands
                  VxSwiper.builder(
                      //to remove the unnecessary spaces here..
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 110,
                      enlargeCenterPage: true,
                      itemCount: brandsSliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(brandsSliderList[index],
                                fit: BoxFit.fitWidth)
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),
                  10.heightBox,

                  //showing deals buttons
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButtons(
                                width: context.screenWidth / 2.5,
                                height: context.screenHeight * 0.15,
                                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                title: index == 0 ? todayDeal : flashSale,
                              ))),
                  10.heightBox,

                  //2nd Swippers for homescreen
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 110,
                      enlargeCenterPage: true,
                      itemCount: secondSliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(secondSliderList[index],
                                fit: BoxFit.fitWidth)
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),

                  10.heightBox,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => homeButtons(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 3.5,
                                icon: index == 0
                                    ? icTopCategories
                                    : index == 1
                                        ? icBrands
                                        : icTopSeller,
                                title: index == 0
                                    ? topCategories
                                    : index == 1
                                        ? brand
                                        : topSellers,
                              ))),

                  //Feature Categories  in home screen
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featureCategories.text
                        .color(darkFontGrey)
                        .size(17)
                        .fontFamily(semibold)
                        .make(),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
