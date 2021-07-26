import 'package:flutter/material.dart';

import '../widgets/logo.dart';
import '../constants/constants_text.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65,
              ),
              Logo(
                onboardingScreen: false,
                tabletScreen: false,
              ),
              SizedBox(
                height: 41,
              ),
              Text(ForgotPassword.titleResetPassword,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(fontSize: 32, color: Color(0xff030F09))),
              SizedBox(
                height: 29.12,
              ),
              Text(ForgotPassword.subtitleResetPassword,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(fontSize: 15)),
              Spacer(),
              Text(
                ForgotPassword.emailAddress,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontFamily: 'Nunito',
                    color: Color(0xffA8A8A8),
                    fontSize: 15),
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
                height: 53,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff30BE76),
                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () {},
                  child: Text(
                    ForgotPassword.buttonSend,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Colors.white),
                  )),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
