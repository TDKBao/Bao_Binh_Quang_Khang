import 'package:flutter/material.dart';
import 'package:mobile_app/src/constants/constants_color.dart';

import '../widgets/responsive.dart';
import '../widgets/logo.dart';
import '../constants/constants_text.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Responsive(
                mobile: Column(
                  children: [
                    Container(
                      height: 360,
                      width: double.infinity,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image:
                              new AssetImage('assets/images/sigup_screen.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: EdgeInsets.only(left: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Logo(
                            onboardingScreen: false,
                            tabletScreen: false,
                          ),
                          Padding(padding: const EdgeInsets.all(45)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(SignUpText.titleStartMobile,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          fontFamily: 'Nunito',
                                          color: Color(0xff030F09),
                                          fontSize: 24)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    BoxSignUp()
                  ],
                ),
                tablet: Stack(
                  children: [
                    Opacity(
                      opacity: 0.25,
                      child: Image.asset(
                        'assets/images/photo-1520981825232-ece5fae45120.jpeg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Center(
                        child: Column(
                      children: [
                        SizedBox(height: 50),
                        Logo(onboardingScreen: false, tabletScreen: true),
                        SizedBox(
                          height: 150,
                        ),
                        Text(SignUpText.titleStartTablet,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(
                                    fontFamily: 'Nunito',
                                    color: Color(0xff030F09),
                                    fontSize: 24)),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            height: 500,
                            width: 475,
                            child: BoxSignUp())
                      ],
                    ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class BoxSignUp extends StatelessWidget {
  const BoxSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(25, 22, 25, 0),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(SignUpText.subTitleCreateAccount,
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontFamily: 'Nunito-Regular',
                            color: Color(0xff606060),
                            fontSize: 16,
                          )),
                ],
              ),
              SizedBox(
                height: 51,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    SignUpText.fullName,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontFamily: 'Nunito-Regular',
                        color: Color(0xffA8A8A8),
                        fontSize: 14),
                  ),
                  TextField(
                    maxLines: 1,
                    minLines: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 13, bottom: 5),
                      isDense: true,
                    ),
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontFamily: 'Nunito-Regular',
                        color: Color(0xff030F09),
                        fontSize: 16),
                  ),
                  SizedBox(height: 30),
                  Text(SignUpText.email,
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontFamily: 'Nunito-Regular',
                          color: Color(0xffA8A8A8),
                          fontSize: 14)),
                  TextField(
                    maxLines: 1,
                    minLines: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 13, bottom: 5),
                      isDense: true,
                    ),
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontFamily: 'Nunito',
                        color: Color(0xff030F09),
                        fontSize: 16),
                  ),
                  SizedBox(height: 30),
                  Text(SignUpText.password,
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontFamily: 'Nunito-Regular',
                          color: Color(0xffA8A8A8),
                          fontSize: 14)),
                  TextField(
                    obscureText: true,
                    maxLines: 1,
                    minLines: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 13, bottom: 5),
                      isDense: true,
                    ),
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontFamily: 'Nunito',
                        color: Color(0xff030F09),
                        fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff30BE76)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                  ),
                  onPressed: () => {Navigator.of(context).pushNamed('/Login')},
                  child: Text(
                   SignUpText.buttonCreateAccount,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontFamily: 'Nunito-Bold',
                          color: Colors.white,
                          fontSize: 16,
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      SignUpText.subtitleAlrHaveAcc,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontFamily: 'Nunito',
                            color: Color(0xffA8A8A8),
                            fontSize: 14,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      SignUpText.subtitleLoginHere,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontFamily: 'Nunito-Bold',
                            color: Color(0xff30BE76),
                            fontSize: 16,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
