import 'package:ecommmerce/App-color/appcolor.dart';
import 'package:ecommmerce/svg_img/svg_image.dart';
import 'package:ecommmerce/textstyle/loging_text.dart';
import 'package:ecommmerce/textstyle/signup%20_text.dart';
import 'package:ecommmerce/widget/buikldTextfromfiled.dart';
import 'package:ecommmerce/widget/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sing_Up extends StatelessWidget {
  Widget buildTob() {
    return Column(
      children: <Widget>[
        Image.asset(
          "images/Logo.png",
          height: 150,
        ),
        buikdTextfromfiled(
          texthint: "full name",
          obserbtext: false,
        ),
        buikdTextfromfiled(
          texthint: "Email",
          obserbtext: false,
        ),
        buikdTextfromfiled(
          texthint: "Password",
          obserbtext: true,
        ),
        buikdTextfromfiled(
          texthint: "Confrom password",
          obserbtext: true,
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: My_button(
              onpress: () {},
              color: AppColors.baseDarkPinkColor,
              text: "Create a Account",
            )),
        SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
              text: "Signup with our agree\n\t",
              style: SignUp.signuptxt,
              children: <TextSpan>[
                TextSpan(
                  text: "lerem",
                  style: Logoin_style.trems,
                ),
                TextSpan(
                  text: "and\t",
                  style: Logoin_style.andyt4extStyle,
                ),
                TextSpan(
                  text: "Condition of use",
                  style: Logoin_style.condtionTextstyle,
                )
              ]),
        ),
      ],
    );
  }

  Widget SocialButton({Widget child, Function onpress}) {
    return MaterialButton(
        onPressed: onpress,
        shape: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: AppColors.baseGrey40Color,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: child);
  }

  Widget buildBottom() {
    return Container(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            'SignUp to Other socal Networks',
            style: Logoin_style.conectwithNetworks,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SocialButton(
                  onpress: () {},
                  child: SvgPicture.asset(
                    svgImage.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                SocialButton(
                  onpress: () {},
                  child: SvgPicture.asset(
                    svgImage.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                SocialButton(
                  onpress: () {},
                  child: SvgPicture.asset(
                    svgImage.twitter,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: MaterialButton(
              onPressed: () {},
              color: AppColors.baseGrey10Color,
              child: Center(
                child: Text(
                  'Sign Up',
                  style: Logoin_style.logingPage,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: ListView(
        physics: BouncingScrollPhysics(),
        children: [buildTob(), buildBottom()],
      )),
    );
  }
}
