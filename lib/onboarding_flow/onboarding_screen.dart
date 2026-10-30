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
                Image.asset("assets/images/on_boarding_icon.png", height: 300),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 200, top: 116),
                  child: Text("BillZilla"),
                ),

                Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 150,
                    top: 8,
                    bottom: 36,
                  ),
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
