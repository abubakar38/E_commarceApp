import 'package:ecommmerce/App-color/appcolor.dart';
import 'package:ecommmerce/raout/raout.dart';
import 'package:ecommmerce/screen/log_scrn/home%20page/home%20page.dart';
import 'package:ecommmerce/screen/log_scrn/sing%20up/sing%20up.dart';
import 'package:ecommmerce/svg_img/svg_image.dart';
import 'package:ecommmerce/textstyle/loging_text.dart';
import 'package:ecommmerce/widget/buikldTextfromfiled.dart';
import 'package:ecommmerce/widget/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login_screen extends StatefulWidget {
  @override
  _Login_screenState createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  Widget buildtopart(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          "images/Logo.png",
          height: 150,
        ),
        Column(
          children: <Widget>[
            buikdTextfromfiled(
              texthint: "email",
              obserbtext: false,
            ),
            buikdTextfromfiled(
              texthint: "password",
              obserbtext: true,
            ),
          ],
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                    child: My_button(
                  text: "sing in",
                  color: AppColors.baseBlackColor,
                  onpress: () {
                    pageRaout.gotoNextPage(
                        context: context, navigeteto: HOmepage());
                  },
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: My_button(
                  text: "sing up",
                  color: AppColors.baseDarkPinkColor,
                  onpress: () {
                    pageRaout.gotoNextPage(
                        context: context, navigeteto: Sing_Up());
                  },
                )),
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Text(
            "forget password",
            style: Logoin_style.forgot_stle,
          ),
        )
      ],
    );
  }

  Widget builddbottompart() {
    return Container(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            " sign up to sosial mediea",
            style: Logoin_style.Sosail_meadi_text,
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    svgImage.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5, color: AppColors.baseGrey60Color),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    svgImage.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5, color: AppColors.baseGrey60Color),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    svgImage.twitter,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5, color: AppColors.baseGrey60Color),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            child: Container(
              child: Center(
                child: Text(
                  "Sing Up",
                  style: Logoin_style.singUp,
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sing_Up()));
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildtopart(context),
                builddbottompart(),
              ],
            )
          ],
        ),
      )),
    );
  }
}
