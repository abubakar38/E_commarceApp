import 'package:ecommmerce/data/home%20page%20Data.dart';
import 'package:ecommmerce/modal/singleProductmodal.dart';
import 'package:ecommmerce/widget/single_Product_widge.dart';
import 'package:flutter/material.dart';

class AccessoriesData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: colothsData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        var data = accessoriesData[index];
        return Singleproduct(
            onpressed: () {},
            productImage: data.productImage,
            productModle: data.productModle,
            productName: data.productname,
            productOldprice: data.productOldPrise,
            productPrice: data.productPrice);
      },
    );
  }
}
