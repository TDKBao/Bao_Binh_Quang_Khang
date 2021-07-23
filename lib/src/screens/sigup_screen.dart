import 'package:flutter/material.dart';

class SigUpSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 375,
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
                    Image.asset('assets/images/Logo.png'),
                  ],
                ),
                Padding(padding: const EdgeInsets.all(45)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Start \nfrom Scratch',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.all(20)),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 25)),
                    Text('Create account continue',
                        style: TextStyle(fontSize: 14, color: Colors.black26)),
                  ],
                ),
                Padding(padding: const EdgeInsets.all(30)),
                Column(
                  children: [
                    TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            labelText: 'Full Name',
                            labelStyle: TextStyle(color: Colors.grey),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )))),
                    TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.grey),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            )))),
                    TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ))))
                  ],
                ),
                Padding(padding: const EdgeInsets.all(30)),
                Column(
                  children: [
                  Text('Create Account', style:TextStyle(color: Colors.black))
                ],) 
              ],
            ),
          )
        ],
      ),
    );
  }
}
