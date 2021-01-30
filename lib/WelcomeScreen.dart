import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz/question_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'constants.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 2),
                    Text("Let's Play Quiz",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold,
                      ),),
                    Text("Enter your information here"),
                    Spacer(),

                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF1C2341),
                          hintText: 'Full Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          )
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        Get.to(QuizScreen());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: EdgeInsets.all(kDefaultPadding * 0.75),
                        decoration: BoxDecoration(
                            gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all((Radius.circular(12))),
                        ),
                        child:  Text('Hey There',
                        style: Theme.of(context).textTheme.button.copyWith(
                          color: Colors.black,
                        ),),
                      ),
                    ),
                    Spacer(flex: 2,),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
