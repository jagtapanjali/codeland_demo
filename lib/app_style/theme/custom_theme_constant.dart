import 'package:codeland_demo/data_provider/shared_preference/shared_preference_controller.dart';
import 'package:flutter/material.dart';

class ThemeConstant {
  //Light theme
  static const primary = Color(0xFFF68326);
  static const primaryBackground = Color(0xFFFFFFFF);
  static const primaryVariant = Color(0xFFF0A56B);
  static const primaryVariant2 = Color(0xFFD1742A);
  static const primaryVariant3 = Color(0xFFC8691C);

  static const background = Color(0xFFF5F5F5);
  static const backgroundVariant = Color(0xFFF8F8F8);
  static const backgroundVariant2 = Color(0xFFF1F1F1);
  static const surface = Color(0xFFFFFFFF);
  static const divider = Color(0xFFDBE2EA);

  static const text = Color(0xFF000000);
  static const textDetail = Color(0xFF756F86);
  static const textCaption = Color(0xFFA4A4A4);
  static const textSpecial = Color(0xFF635C5C);

  static const textWhite = Color(0xFFFFFFFF);
  static const textOrange = Color(0xFFF2AC57);
  static const textYellow = Color(0xFFFFD145);
  static const textBlue = Color(0xFF4AD7F4);
  static const textGreen = Color(0xFF14A38B);
  static const textGreenVariant = Color(0xFFE6F7E8);

  static const transparent = Color(0x00000000);
  static const success = Color(0xFF11F204);
  static const error = Color(0xFFDF0000);

  static const shimmerPrimary = Color(0xFF464646);
  static const shimmerSecondary = Color(0xcc857e7e);
  static const shimmerSurface = Color(0xFFFFFFFF);

  // Dark theme
  static const primaryDark = Color(0xFFF68326);
  static const primaryBackgroundDark = Color(0xFFFFFFFF);
  static const primaryVariantDark = Color(0xFFF0A56B);
  static const primaryVariant2Dark = Color(0xFFD1742A);

  static const backgroundDark = Color(0xFF292929);
  static const backgroundVariantDark = Color(0xFF292929);
  static const backgroundVariant2Dark = Color(0xFF292929);
  static const surfaceDark = Color(0xFFFFFFFF);
  static const dividerDark = Color(0xFFDBE2EA);

  static const textDark = Color(0xFFFFFFFF);
  static const textDetailDark = Color(0xFF9E9A9A);
  static const textCaptionDark = Color(0xFFA4A4A4);
  static const textSpecialDark = Color(0xFF635C5C);

  static const textWhiteDark = Color(0xFFFFFFFF);
  static const textOrangeDark = Color(0xFFF2AC57);
  static const textYellowDark = Color(0xFFFFD145);
  static const textBlueDark = Color(0xFF4AD7F4);
  static const textGreenDark = Color(0xFF14A38B);

  static const transparentDark = Color(0x00000000);
  static const successDark = Color(0xFF11F204);
  static const errorDark = Color(0xFFDF0000);

  static const shimmerPrimaryDark = Color(0xFF464646);
  static const shimmerSecondaryDark = Color(0xcc857e7e);
  static const shimmerSurfaceDark = Color(0xFFFFFFFF);

  //shared preferences methods
  static setTheme(bool value) async {
    await SharedPreferenceController.shared
        .setBool(SharedPreferenceKeys.themeMode, value);
  }

  static getTheme() async {
    return await SharedPreferenceController.shared
        .getBool(SharedPreferenceKeys.themeMode);
  }
}

/*
for opacity

100% — FF
99% — FC
98% — FA
97% — F7
96% — F5
95% — F2
94% — F0
93% — ED
92% — EB
91% — E8
90% — E6
89% — E3
88% — E0
87% — DE
86% — DB
85% — D9
84% — D6
83% — D4
82% — D1
81% — CF
80% — CC
79% — C9
78% — C7
77% — C4
76% — C2
75% — BF
74% — BD
73% — BA
72% — B8
71% — B5
70% — B3
69% — B0
68% — AD
67% — AB
66% — A8
65% — A6
64% — A3
63% — A1
62% — 9E
61% — 9C
60% — 99
59% — 96
58% — 94
57% — 91
56% — 8F
55% — 8C
54% — 8A
53% — 87
52% — 85
51% — 82
50% — 80
49% — 7D
48% — 7A
47% — 78
46% — 75
45% — 73
44% — 70
43% — 6E
42% — 6B
41% — 69
40% — 66
39% — 63
38% — 61
37% — 5E
36% — 5C
35% — 59
34% — 57
33% — 54
32% — 52
31% — 4F
30% — 4D
29% — 4A
28% — 47
27% — 45
26% — 42
25% — 40
24% — 3D
23% — 3B
22% — 38
21% — 36
20% — 33
19% — 30
18% — 2E
17% — 2B
16% — 29
15% — 26
14% — 24
13% — 21
12% — 1F
11% — 1C
10% — 1A
9% — 17
8% — 14
7% — 12
6% — 0F
5% — 0D
4% — 0A
3% — 08
2% — 05
1% — 03
0% — 00
*/
