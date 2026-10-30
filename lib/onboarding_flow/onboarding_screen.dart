import 'package:billzilla/onboarding_flow/backdrop_gradiant.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 850,
          width: 350,
          child: BackdropGradiant(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsetsGeometry.only(bottom: 200),
                  child: Image.asset(
                    "assets/images/on_boarding_icon.png",
                    height: 300,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 200, bottom: 116),
                  child: Text("BillZilla"),
                ),

                Padding(
                  padding: EdgeInsetsGeometry.only(left: 200, bottom: 108),
                  child: Text("Managing your finances"),
                ),

                TextButton(onPressed: () {}, child: Text("Get Started")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
