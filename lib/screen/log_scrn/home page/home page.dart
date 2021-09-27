import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommmerce/App-color/appcolor.dart';
import 'package:ecommmerce/data/home%20page%20Data.dart';
import 'package:ecommmerce/modal/singleProductmodal.dart';
import 'package:ecommmerce/screen/accessoriesData.dart';
import 'package:ecommmerce/screen/tabBar_data_show.dart';
import 'package:ecommmerce/screen/tabBardata.dart';
import 'package:ecommmerce/svg_img/svg_image.dart';
import 'package:ecommmerce/textstyle/home-Page_style.dart';
import 'package:ecommmerce/widget/show%20all%20widget.dart';
import 'package:ecommmerce/widget/single_Product_widge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class HOmepage extends StatelessWidget {
  AppBar buildappbar() {
    return AppBar(
      bottom: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text('All'),
          Text("clothig"),
          Text("shoes"),
          Text("Accesories"),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Column(
        children: <Widget>[
          Text('Welcome', style: homepage_style.AppbarUper_style),
          Text(
            'Shoping',
            style: homepage_style.shopsytle,
          )
        ],
      ),
      actions: [
        IconButton(
          icon: RotationTransition(
            turns: AlwaysStoppedAnimation(90 / 630),
            child: SvgPicture.asset(
              svgImage.filter,
            ),
          ),
          color: AppColors.baseBlackColor,
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            svgImage.serch,
          ),
          color: AppColors.baseBlackColor,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget buildAdvitismentPlase() {
    return Padding(
      padding: EdgeInsets.all(18),
      child: Container(
        height: 200,
        child: Carousel(
          autoplay: true,
          animationCurve: Curves.fastLinearToSlowEaseIn,
          animationDuration: Duration(microseconds: 100),
          showIndicator: false,
          images: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://blog.creatopy.com/wp-content/uploads/2019/03/creative-advertising-and-pop-culture-pop-culture-ads.png"),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://blog.creatopy.com/wp-content/uploads/2018/05/advertisement-ideas-inspiration-advertising.png",
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.creatopy.com/blog/wp-content/uploads/2017/04/advertising-ideas-nestle.jpg",
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.creatopy.com/blog/wp-content/uploads/2017/04/mars-truck-size-truck-promo.jpg",
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.creatopy.com/blog/wp-content/uploads/2017/04/advertising-ideas-creative-advertising.jpg",
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.creatopy.com/blog/wp-content/uploads/2017/04/bus-advertising-ideas-for-creatives.jpg",
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.creatopy.com/blog/wp-content/uploads/2017/04/creative-brilliant-product-advertisement-example.jpg",
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTrendingProduct({
    String productImage,
    String productName,
    String productModel,
    double productPrice,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30, right: 20, bottom: 20),
      height: 65,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Material(
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.network(productImage),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    overflow: TextOverflow.ellipsis,
                    style: homepage_style.ProductNameStyle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    productModel,
                    style: homepage_style.ProductModelStyle,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: MaterialButton(
              color: AppColors.baseLightPinkColor,
              elevation: 0,
              height: 45,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(0.7),
              ),
              onPressed: () {},
              child: Text(
                "\$ $productPrice",
                style: homepage_style.ProductPriceStyle,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildappbar(),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            ListView(
              children: [
                buildAdvitismentPlase(),
                ShowallText(
                  leaftText: "New arrible",
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: GridView.builder(
                        shrinkWrap: true,
                        primary: true,
                        itemCount: sigleProductData.length,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          var data = sigleProductData[index];
                          return Singleproduct(
                            onpressed: () {},
                            productImage: data.productImage,
                            productModle: data.productModle,
                            productName: data.productname,
                            productOldprice: data.productOldPrise,
                            productPrice: data.productPrice,
                          );
                        })),
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                ShowallText(
                  leaftText: "What\'s tranding",
                ),
                buildTrendingProduct(
                  productImage:
                      'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
                  productModel: 'Tank-tops',
                  productName: 'Classics mesh tank top',
                  productPrice: 54,
                ),
                buildTrendingProduct(
                  productImage:
                      'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
                  productModel: 'Tank-tops',
                  productName: 'Classics mesh tank top',
                  productPrice: 15,
                ),
                buildTrendingProduct(
                  productImage:
                      'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
                  productModel: 'Tank-tops',
                  productName: 'Classics mesh tank top',
                  productPrice: 80,
                ),
                ShowallText(
                  leaftText: "Your History",
                ),
                Container(
                  height: 260,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: true,
                    itemCount: shoesData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context, index) {
                      var historyDataStore = shoesData[index];
                      return Singleproduct(
                          onpressed: () {},
                          productImage: historyDataStore.productImage,
                          productModle: historyDataStore.productModle,
                          productName: historyDataStore.productname,
                          productOldprice: historyDataStore.productOldPrise,
                          productPrice: historyDataStore.productPrice);
                    },
                  ),
                ),
              ],
            ),
            TabBarData(),
            TabBarShow(),
            AccessoriesData(),
          ],
        ),
      ),
    );
  }
}
