import 'package:codeland_demo/constants/constants.dart';

abstract class BaseApp extends StatefulWidget {
  final arguments;
  final ScreenMode screenMode;
  final bool isScroll;

  const BaseApp.builder(
      {super.key,
        this.arguments,
        this.screenMode = ScreenMode.fullScreen,
        this.isScroll = true});

  @override
  BaseState createState();
}

abstract class BaseState extends State<BaseApp>
    with RouteAware, WidgetsBindingObserver {

  PreferredSizeWidget? appBar();

  var isNetConnected = false.obs;
  bool isScreenTap = true; // set flag for enable or disable screen tap/touch event

  Widget body();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isScreenTap == true) {
          FocusScope.of(context).requestFocus(FocusNode());
        }
      },
      child: _app(),
    );
  }

  Widget _app() {
    return _screenMode();
  }

  Widget _screenMode() {
    Widget pageScaffold;
    switch (widget.screenMode) {
      case ScreenMode.allShow:
        pageScaffold = Scaffold(
          resizeToAvoidBottomInset: widget.isScroll,
          body: body(),
          appBar: appBar(),
        );
        break;
      case ScreenMode.fullScreen:
        pageScaffold =
            Scaffold(resizeToAvoidBottomInset: widget.isScroll, body: body());
        break;
      case ScreenMode.hideAppbar:
        pageScaffold = Scaffold(
            resizeToAvoidBottomInset: widget.isScroll,
            body: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
              body(),
            ]));
        break;
      case ScreenMode.hideBottom:
        pageScaffold = Scaffold(
          resizeToAvoidBottomInset: widget.isScroll,
          body: body(),
          appBar: appBar(),
        );
        break;
      default:
        pageScaffold = Scaffold(
          resizeToAvoidBottomInset: widget.isScroll,
          body: body(),
          appBar: appBar(),
        );
        break;
    }
    return pageScaffold;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPop() {
    // TODO: implement didPop
    super.didPop();
    RoutesPage.currentPage = ModalRoute.of(context)!.settings.name;
    printLog('didPop');
  }

  @override
  void didPush() {
    // TODO: implement didPush
    super.didPush();
    printLog('didPush');
  }

  @override
  void didPopNext() {
    // TODO: implement didPopNext
    super.didPopNext();
    printLog('didPopNext');
  }

  @override
  void didPushNext() {
    // TODO: implement didPushNext
    super.didPushNext();
    printLog('didPushNext');
  }
}