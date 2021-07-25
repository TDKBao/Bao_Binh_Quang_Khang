import 'package:flutter/material.dart';

class SignUpSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 360,
            width: double.infinity,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/sigup_screen.png'),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.only(left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/icons/Logo_screen.png'),
                  ],
                ),
                Padding(padding: const EdgeInsets.all(45)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Start \nfrom Scratch',
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontFamily: 'Nunito',
                            color: Color(0xff030F09),
                            fontSize: 24)),
                  ],
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(25, 22, 25, 0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Create account continue.',
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
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
                          'Full Name',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
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
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontFamily: 'Nunito-Regular',
                                  color: Color(0xff030F09),
                                  fontSize: 16),
                        ),
                        SizedBox(height: 30),
                        Text('Email',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(
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
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontFamily: 'Nunito',
                                  color: Color(0xff030F09),
                                  fontSize: 16),
                        ),
                        SizedBox(height: 30),
                        Text('Password',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(
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
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
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
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff30BE76)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                        ),
                        onPressed: () => {
                          Navigator.pushNamed(context, '/Login')
                        },
                        child: Text(
                          'Create Account',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
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
                            'Already have an account?',
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontFamily: 'Nunito',
                                      color: Color(0xffA8A8A8),
                                      fontSize: 14,
                                    ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Login Here',
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
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
              ))
        ],
      ),
    );
  }
}