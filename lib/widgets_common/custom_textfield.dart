import 'package:ecom_app_ddbahinicreation/constts/consts.dart';

Widget customTextField(
  String? title,
  String? hint,

) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    //we need text and textfield
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
      
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(fontFamily: semibold, color: textfieldGrey),
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: redColor))),
      ),
      5.heightBox
    ],
  );
}
