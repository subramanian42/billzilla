import 'package:flutter/material.dart';

class WelcomePopup extends StatefulWidget {
  const WelcomePopup({super.key});

  @override
  State<WelcomePopup> createState() => _WelcomePopupState();
}

class _WelcomePopupState extends State<WelcomePopup>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Color(0xff000000),
            borderRadius: BorderRadius.circular(28),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: AlignmentGeometry.topLeft,

                child: Image.asset(
                  "assets/welcome_screen_logo.png",
                  height: 54,
                  width: 54,
                ),
              ),

              const Text(
                'Welcome to BillZilla!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffFCFCFD),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Take control of your finances with ease.',
                textAlign: TextAlign.center,

                style: TextStyle(
                  color: Color(0xffFCFCFD),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: 320,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xff000000),
                        ),
                      ),
                      child: const Text('Sign up'),
                    ),

                    const SizedBox(width: 12),

                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xffFCFCFD),
                        ),
                      ),
                      child: const Text('Sign in'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
