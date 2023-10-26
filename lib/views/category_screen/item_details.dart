import 'package:ecom_app_ddbahinicreation/constts/consts.dart';
import 'package:ecom_app_ddbahinicreation/constts/list.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/our_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemDetails extends StatelessWidget {
  final String? title;

  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                //color for icons will come from main page || iconThemeData
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
            ),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            // color: Colors.red, -- just for test
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // section for swipper
                    VxSwiper.builder(
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                    10.heightBox,
                    //section for tile and details
                    title!.text
                        .size(16)
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                    10.heightBox,

                    //Rating
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "\$30,000"
                        .text
                        .color(redColor)
                        .fontFamily(bold)
                        .size(18)
                        .make(),
                    10.heightBox,
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Seller".text.white.fontFamily(semibold).make(),
                            5.heightBox,
                            "In House Brands"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .size(16)
                                .make(),
                          ],
                        )),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child:
                              Icon(Icons.message_rounded, color: darkFontGrey),
                        )
                      ],
                    )
                        .box
                        .height(60)
                        .padding(const EdgeInsets.symmetric(horizontal: 16))
                        .color(textfieldGrey)
                        .make(),

                    20.heightBox,

                    //Color Section
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                                children: List.generate(
                                    3,
                                    (index) => VxBox()
                                        .size(40, 40)
                                        .roundedFull
                                        .color(Vx.randomPrimaryColor)
                                        .margin(const EdgeInsets.symmetric(
                                            horizontal: 4))
                                        .make()))
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),

                        // Row for Quantity
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child:
                                  "Quantity: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove)),
                                "0"
                                    .text
                                    .size(16)
                                    .color(darkFontGrey)
                                    .fontFamily(bold)
                                    .make(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add)),
                                10.widthBox,
                                "(0 available)"
                                    .text
                                    .color(textfieldGrey)
                                    .make(),
                              ],
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),

                        //Section for Total
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Total: ".text.color(textfieldGrey).make(),
                            ),
                            "\$0.00"
                                .text
                                .color(redColor)
                                .size(16)
                                .fontFamily(bold)
                                .make(),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),
                        10.heightBox,
                      ],
                    ).box.white.shadowSm.make(),

                    // Section for Description
                    10.heightBox,
                    "Description"
                        .text
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                    10.heightBox,
                    "This is description section and I am putting dummy description here ..........adfjkadhfjdhfelkh djafhekjfhfhajdhjfadkfj hdjkfhadkjfhdjfhdsjfhdsjfahsdfjd"
                        .text
                        .color(darkFontGrey)
                        .make(),

                    //This is for buttons section
                    10.heightBox,
                    ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: List.generate(
                            5,
                            (index) => ListTile(
                                  title: itemsDetailButtonsList[index]
                                      .text
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .make(),
                                  trailing: const Icon(Icons.arrow_forward),
                                ))),
                    20.heightBox,
                    //Product may like section
                    productsyoumaylike.text
                        .fontFamily(bold)
                        .size(16)
                        .color(darkFontGrey)
                        .make(),

                    // copy from homescreen because we have already used that
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(
                              6,
                              (index) => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(imgP1,
                                          width: 130, fit: BoxFit.cover),
                                      10.heightBox,
                                      "Laptop 4GB/64GB"
                                          .text
                                          .fontFamily(semibold)
                                          .color(darkFontGrey)
                                          .make(),
                                      10.heightBox,
                                      "\$400"
                                          .text
                                          .color(redColor)
                                          .fontFamily(bold)
                                          .size(16)
                                          .make(),
                                    ],
                                  )
                                      .box
                                      .white
                                      .margin(const EdgeInsets.symmetric(
                                          horizontal: 4))
                                      .roundedSM
                                      .padding(const EdgeInsets.all(8))
                                      .make())),
                    )
                  ],
                ).box.white.shadowSm.make(),
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ourButton(
              color: redColor,
              onPress: () {},
              textColor: whiteColor,
              title: "Add to Cart"),
        )
      ]),
    );
  }
}
