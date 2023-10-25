import 'package:ecom_app_ddbahinicreation/constts/consts.dart';
import 'package:ecom_app_ddbahinicreation/constts/list.dart';
import 'package:ecom_app_ddbahinicreation/views/components/featured_buttons.dart';
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
                      itemCount: brandsSecondSliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(brandsSecondSliderList[index],
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
                  20.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featureCategories.text
                        .color(darkFontGrey)
                        .size(17)
                        .fontFamily(semibold)
                        .make(),
                  ),
                  20.heightBox,
                  SingleChildScrollView(
                    // to reduce overflow
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: [
                                  featuredButtons(
                                      icon: featureImagesOne[index],
                                      title: featureTitlesOne[index]),
                                  10.heightBox,
                                  featuredButtons(
                                      icon: featureImagesTwo[index],
                                      title: featureTitlesTwo[index])
                                ],
                              )).toList(),
                    ),
                  ),

                  // feature products space
                  20.heightBox,
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(color: redColor),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featureProducts.text.white
                              .fontFamily(bold)
                              .size(18)
                              .make(),

                          //Row and Column under that row
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            imgP1,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          10.heightBox,
                                          "Laptop 4GB/64GB"
                                              .text
                                              .fontFamily(semibold)
                                              .color(darkFontGrey)
                                              .make(),
                                          10.heightBox,
                                          "\$600"
                                              .text
                                              .color(redColor)
                                              .fontFamily(bold)
                                              .size(16)
                                              .make()
                                        ],
                                      )
                                          .box
                                          .white
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .roundedSM
                                          .padding(const EdgeInsets.all(8))
                                          .make()),
                            ),
                          )
                        ]),
                  ),
                  20.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 110,
                      enlargeCenterPage: true,
                      itemCount: brandsThirdSliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(brandsThirdSliderList[index],
                                fit: BoxFit.fitWidth)
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),

                  //section for all products
                  20.heightBox,
                  GridView.builder(
                      physics:
                          const NeverScrollableScrollPhysics(), // scrolling with body's scroller
                      //we are using it under column so we have to make true for shrinkwrap
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          mainAxisExtent: 300),
                      itemBuilder: (context, index) {
                        // return Container(
                        //   color: redColor,
                        // ); //just for testing grids

                        //we have to use velocity ..so we are using column here
                        return Column(
                          children: [
                            Image.asset(imgP5,
                                height: 200, width: 200, fit: BoxFit.cover),
                            Spacer(),
                            "Laptop 4GB/64GB"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            10.heightBox,
                            "\$500"
                                .text
                                .color(redColor)
                                .fontFamily(bold)
                                .size(16)
                                .make(),
                            10.heightBox,
                          ],
                        )
                            .box
                            .white
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .roundedSM
                            .padding(const EdgeInsets.all(12))
                            .make();
                      }),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

//using gridview -- column(img, text, text) - under child
