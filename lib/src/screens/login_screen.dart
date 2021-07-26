import 'package:flutter/material.dart';

import '../responsive.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Responsive(
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  Image.asset(
                    'assets/images/cover.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 292,
                  ),
                  Positioned(
                    top: 138,
                    left: 25,
                    child: Text(
                      'Welcome Back!',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff030F09),
                          fontSize: 25),
                    ),
                  ),
                  Positioned(
                    top: 63,
                    left: 25,
                    child: Image.asset(
                      'assets/icons/logoicon.png',
                      width: 18,
                      height: 26,
                    ),
                  ),
                  Positioned(
                    top: 62,
                    left: 53,
                    child: Text(
                      'scratch',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff363837),
                          fontSize: 21),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 23, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Please login to continue.',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontFamily: 'Nunito',
                          color: Color(0xff606060),
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 52,
                    ),
                    Text(
                      'Email address',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontFamily: 'Nunito',
                          color: Color(0xffA8A8A8),
                          fontSize: 14),
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                      cursorColor: Color(0xff30BE76),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 15, bottom: 5),
                        isDense: true,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff30BE76),
                            width: 2,
                          ),
                        ),
                      ),
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: 'Nunito',
                          color: Color(0xff030F09),
                          fontSize: 16.5),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Password',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  fontFamily: 'Nunito',
                                  color: Color(0xffA8A8A8),
                                  fontSize: 14),
                        ),
                        Text(
                          'Forgot password?',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  fontFamily: 'Nunito',
                                  color: Color(0xff606060),
                                  fontSize: 14),
                        ),
                      ],
                    ),
                    TextField(
                      obscureText: true,
                      obscuringCharacter: '⬤',
                      cursorColor: Color(0xff30BE76),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 15, bottom: 5),
                        isDense: true,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff30BE76),
                            width: 2,
                          ),
                        ),
                      ),
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: 'Nunito',
                          color: Color(0xff030F09),
                          fontSize: 17.5,
                          letterSpacing: 1.5),
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 51,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff30BE76)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                        ),
                        onPressed: () => {},
                        child: Text(
                          'Login',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16.5,
                                  ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'New to Scratch?',
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontFamily: 'Nunito',
                                      color: Color(0xffA8A8A8),
                                      fontSize: 14.5,
                                    ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Create Account Here',
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff30BE76),
                                      fontSize: 16.9,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        tablet: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/login_background.jpeg',
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Column(
              children: [
                Spacer(
                  flex: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/logoicon.png',
                      width: 30,
                      height: 38,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'scratch',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontFamily: 'Nunito-Bold',
                          // fontWeight: FontWeight.bold,
                          color: Color(0xff363837),
                          fontSize: 31),
                    ),
                  ],
                ),
                Spacer(
                  flex: 5,
                ),
                Text(
                  'Welcome Back!',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontFamily: 'Nunito-Bold',
                      // fontWeight: FontWeight.bold,
                      color: Color(0xff030F09),
                      fontSize: 40),
                ),
                Container(
                  width: 650,
                  height: 750,
                  margin: EdgeInsets.only(top: 60),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(80, 80, 80, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Please login to continue.',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  fontFamily: 'Nunito-Bold',
                                  color: Color(0xff606060),
                                  fontSize: 22),
                        ),
                        SizedBox(
                          height: 55,
                        ),
                        Text(
                          'Email address',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  fontFamily: 'Nunito',
                                  color: Color(0xffA8A8A8),
                                  fontSize: 23),
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          cursorColor: Color(0xff30BE76),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 29, bottom: 8),
                            isDense: true,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff30BE76),
                                width: 2,
                              ),
                            ),
                          ),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontFamily: 'Nunito',
                                  color: Color(0xff030F09),
                                  fontSize: 26),
                        ),
                        SizedBox(
                          height: 48,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Password',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      fontFamily: 'Nunito',
                                      color: Color(0xffA8A8A8),
                                      fontSize: 23),
                            ),
                            Text(
                              'Forgot password?',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      fontFamily: 'Nunito-Bold',
                                      color: Color(0xff606060),
                                      fontSize: 23),
                            ),
                          ],
                        ),
                        TextField(
                          obscureText: true,
                          obscuringCharacter: '●',
                          cursorColor: Color(0xff30BE76),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 29, bottom: 8),
                            isDense: true,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff30BE76),
                                width: 2,
                              ),
                            ),
                          ),
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Nunito',
                                    color: Color(0xff030F09),
                                    fontSize: 25,
                                  ),
                        ),
                        SizedBox(
                          height: 48,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 79,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xff30BE76)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              )),
                            ),
                            onPressed: () => {},
                            child: Text(
                              'Login',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    fontFamily: 'Nunito-Bold',
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 26,
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 48,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                'New to Scratch?',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                      fontFamily: 'Nunito',
                                      color: Color(0xffA8A8A8),
                                      fontSize: 23,
                                    ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                'Create Account Here',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                      fontFamily: 'Nunito-Bold',
                                      // fontWeight: FontWeight.bold,
                                      color: Color(0xff30BE76),
                                      fontSize: 26,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
