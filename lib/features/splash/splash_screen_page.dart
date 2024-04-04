import 'package:codeland_demo/constants/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initSetup();
  }

  initSetup() {
    Future.delayed(const Duration(seconds: 2), () async {
        RoutesPage.of()
           .goTo(mode: RouteMode.remove, moveTo: RouteName.loginPage);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: AppColorStyle.primary(context),
          child: Center(child: Image.asset(IconAssetsPNG.codeLandLogo,width: 250.w,))),
    );
  }
}
