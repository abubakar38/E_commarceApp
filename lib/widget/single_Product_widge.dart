import 'package:ecommmerce/App-color/appcolor.dart';
import 'package:flutter/material.dart';

class Singleproduct extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productModle;
  final double productPrice;
  final double productOldprice;
  final Function onpressed;
  Singleproduct({
    this.productName,
    this.productImage,
    this.productModle,
    this.productOldprice,
    this.productPrice,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onpressed,
        child: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  child: Container(
                width: double.infinity,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                    color: AppColors.baseGrey10Color,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(productImage),
                    )),
                child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 30,
                    color: AppColors.baseDarkOrangeColor,
                  ),
                  onPressed: () {},
                ),
              )),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      productName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      productModle,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.baseDarkPinkColor,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "\$,$productPrice",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "\$,$productPrice",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
