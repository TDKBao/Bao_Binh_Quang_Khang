import 'package:flutter/material.dart';

import 'package:mobile_app/src/widgets/logo.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Logo(
                onboardingScreen: false,
                tabletScreen: false,
              ),
              SizedBox(
                height: 41,
              ),
              Text("Reset password",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(fontSize: 32, color: Color(0xff030F09))),
              SizedBox(
                height: 29.12,
              ),
              Text(
                  "Enter the email associated with your account and we'll send and email with a link to reset your password.",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(fontSize: 15)),
              Spacer(),
              Text(
                'Email address',
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
                    'Send',
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
