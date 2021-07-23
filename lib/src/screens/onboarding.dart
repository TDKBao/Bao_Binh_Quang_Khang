import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/backgroundloading.png'),
              alignment: Alignment.bottomCenter,
              fit: BoxFit.none,
              scale: 0.99)),
      child: GestureDetector(
        // onTap: () {
        //   Navigator.of(context).pushNamed('/login');
        // },
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
                  Colors.white.withOpacity(0.5),
                ])),
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icons/logoicon.png"),
                  width: 25.24,
                  height: 36.21,
                ),
                SizedBox(
                  width: 23.26,
                ),
                Text(
                  "scratch",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
