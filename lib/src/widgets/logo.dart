import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthLogo = 25.24;
    double heightLogo = 36.21;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage("assets/icons/logoicon.png"),
          width: widthLogo,
          height: heightLogo,
        ),
        SizedBox(
          width: 23.26,
        ),
        Text(
          "Scratch",
          style: Theme.of(context).textTheme.headline6?.copyWith(
              fontWeight: FontWeight.normal,
              fontFamily: 'Nunito-Bold',
              color: Color(0xff363837)),
        ),
      ],
    );
  }
}
