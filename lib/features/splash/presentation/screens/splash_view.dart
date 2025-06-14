import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_images.dart';

class Splash extends StatefulWidget
{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>
{
  @override
  Widget build(BuildContext context)
  {
    return Center(child: SvgPicture.asset(AppAssets.imagesPNG.appSplashSVG),);
  }
}