import 'package:flutter/material.dart';

import '../widgets/responsive.dart';
import '../constants/constants_text.dart';
import '../widgets/logo.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthsizebutton = 239;
    double heightsizebutton = 50;

    return Responsive(
      mobile: Container(
        // height: double.infinity,
        // width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backgroundloading.png'),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.none,
                scale: 0.99)),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/login');
          },
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white,
                    Colors.white.withOpacity(1),
                    Colors.white.withOpacity(1),
                    Colors.white.withOpacity(0.8),
                    Colors.white.withOpacity(0.5),
                  ])),
              height: double.infinity,
              // width: double.infinity,
              child: Logo(),
            ),
          ),
        ),
      ),
      tablet: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/backgroundloading.png'),
          alignment: Alignment(0, 2.5),
          fit: BoxFit.none,
          scale: 0.5,
        )),
        child: SafeArea(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white,
                    Colors.white.withOpacity(1),
                    Colors.white.withOpacity(1),
                    Colors.white.withOpacity(0.7),
                    Colors.white.withOpacity(0.6),
                  ])),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 79.15,
                  ),
                  Logo(),
                  Spacer(),
                  Text(
                    OnBoarding.titleOnboarding,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff030F09),
                        fontFamily: 'Nunito-SemiBold'),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    OnBoarding.subtitleOnBoarding,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Nunito-Regular',
                        color: Color(0xffA8A8A8)),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff30be76),
                          minimumSize: Size(widthsizebutton, heightsizebutton),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/login');
                        },
                        child: Text(
                          OnBoarding.buttonJoinScracth,
                          style: Theme.of(context).textTheme.button?.copyWith(
                                color: Colors.white,
                                fontFamily: 'Nunito-Bold',
                              ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize:
                                Size(widthsizebutton, heightsizebutton),
                            side: BorderSide(
                              color: Color(0xff30be76),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/login');
                          },
                          child: Text(OnBoarding.buttonLearnMore,
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  ?.copyWith(
                                      color: Color(0xff30be76),
                                      fontFamily: 'Nunito-Bold')))
                    ],
                  ),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
