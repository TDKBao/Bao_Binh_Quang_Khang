import 'package:flutter/material.dart';

import '../responsive.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        height: double.infinity,
        width: double.infinity,
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
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/icons/Logo_screen.png"),
                    width: 25.24,
                    height: 36.21,
                  ),
                  // SizedBox(
                  //   width: 23.26,
                  // ),
                  // Text(
                  //   "scratch",
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .headline6
                  //       ?.copyWith(fontWeight: FontWeight.normal),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
      tablet: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white.withOpacity(1),
              Colors.white.withOpacity(1)
            ]),
            image: DecorationImage(
              image: AssetImage('assets/images/backgroundloading.png'),
              alignment: Alignment.bottomCenter,
              fit: BoxFit.cover,
            )),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 79.15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/icons/Logo_screen.png"),
                      width: 25.24,
                      height: 36.21,
                    ),
                    // SizedBox(
                    //   width: 23.26,
                    // ),
                    // Text(
                    //   "Scratch",
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .headline6
                    //       ?.copyWith(fontWeight: FontWeight.normal),
                    // ),
                  ],
                ),
                // Spacer(),
                Text(
                  'Join over 50 millions people\n sharing recipes everyday',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Never run out of ideas again. Try new foods,\n ingredients, cooking style, and more',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      fontWeight: FontWeight.normal, color: Colors.grey),
                ),
                Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0x30be76),
                          minimumSize: Size(239, 50)),
                      onPressed: () {},
                      child: Text(
                        "Join Scracth",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0x30be76), width: 1),
                        ),
                        onPressed: () {},
                        child: Text("Learn more"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
