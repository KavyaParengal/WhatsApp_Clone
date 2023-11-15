
import 'package:flutter/material.dart';

import '../../utils/k_images.dart';
import '../routes/routes_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then(
            (value) => Navigator.popAndPushNamed(context, RouteNames.welcome));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(),
              Image.asset(KImages.logo),
              const Spacer(),
              const Text(
                'from',
                style: TextStyle(
                  color: Color(0xFF768289),
                  fontSize: 13,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w700,
                ),
              ),
              //Utils.verticalSpace(12),
              const Text(
                'FACEBOOK',
                style: TextStyle(
                  color: Color(0xFF02B099),
                  fontSize: 12,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.40,
                ),
              ),
              //Utils.verticalSpace(size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
