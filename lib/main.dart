import 'package:codeland_demo/constants/constants.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final GlobalKey<NavigatorState> navigatorKey =
  GlobalKey(debugLabel: "Main Navigator");

  @override
  void initState() {
    super.initState();
    initData();
  }

  initData() async {
    AppComponentBase.shared.init();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteName.initial,
      getPages: Routes.routes,
      themeMode: customTheme.currentTheme,
      theme: CustomThemeController.lightTheme,
      darkTheme: CustomThemeController.darkTheme,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        ScreenUtil.init(context);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Container(
            color: AppColorStyle.primaryBackground(context),
            child: Stack(
              children: <Widget>[
                StreamBuilder<bool?>(
                    initialData: false,
                    stream: AppComponentBase.shared.progressDialogStream,
                    builder: (context, snapshot) {
                      return IgnorePointer(
                          ignoring: snapshot.data as bool, child: child);
                    }),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    AppComponentBase.shared.dispose();
    super.dispose();
  }
}
