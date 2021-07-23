import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            children: [
              Image.asset(
                'assets/images/cover.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                top: 133,
                left: 25,
                child: Text(
                  'Welcome Back!',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontFamily: 'Nunito-Bold',
                      color: Color(0xff030F09),
                      fontSize: 26),
                ),
              ),
              Positioned(
                top: 61,
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
                        fontFamily: 'Nunito-Bold',
                        color: Color(0xff363837),
                        fontSize: 22),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please login to continue.',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontFamily: 'Nunito',
                      color: Color(0xff606060),
                      fontSize: 15),
                ),
                SizedBox(
                  height: 48,
                ),
                Text(
                  'Email address',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontFamily: 'Nunito',
                      color: Color(0xffA8A8A8),
                      fontSize: 15),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                  minLines: 1,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 16, bottom: 5),
                    isDense: true,
                  ),
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontFamily: 'Nunito',
                      color: Color(0xff030F09),
                      fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Password',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontFamily: 'Nunito',
                          color: Color(0xffA8A8A8),
                          fontSize: 15),
                    ),
                    Text(
                      'Forgot password?',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontFamily: 'Nunito',
                          color: Color(0xff606060),
                          fontSize: 15),
                    ),
                  ],
                ),
                TextField(
                  obscureText: true,
                  maxLines: 1,
                  minLines: 1,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 16, bottom: 5),
                    isDense: true,
                  ),
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontFamily: 'Nunito',
                      color: Color(0xff030F09),
                      fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff30BE76),
                      side: BorderSide(style: BorderStyle.solid),
                    ),
                    onPressed: () => {},
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontFamily: 'Nunito-Bold',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
