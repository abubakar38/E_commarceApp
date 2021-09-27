import 'package:ecommmerce/App-color/appcolor.dart';
import 'package:flutter/material.dart';

class ShowallText extends StatelessWidget {
  String leaftText;
  ShowallText({this.leaftText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leaftText,
            style: TextStyle(
                fontSize: 17,
                color: AppColors.baseBlackColor,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Show all',
            style: TextStyle(color: AppColors.baseDarkPinkColor, fontSize: 17),
          )
        ],
      ),
    );
  }
}
