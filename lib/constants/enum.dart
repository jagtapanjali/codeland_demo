
enum RouteMode { push, replace, remove }

enum FontFamilyType { ibmPlexSansLight, ibmPlexSansRegular, ibmPlexSansMedium, ibmPlexSansSemiBold, ibmPlexSansBold }

enum FontWeightType { light, regular, medium, semiBold, bold }

enum ScreenMode { fullScreen, hideAppbar, hideBottom, allShow }

enum MediaType { camera, gallery}

enum ErrorStatusCode {

  somethingWrong(500),
  noInternetConnection(101);

  final int value;

  const ErrorStatusCode(this.value);
}