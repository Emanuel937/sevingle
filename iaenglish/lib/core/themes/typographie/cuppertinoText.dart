import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';

class CupertinoText {
  
  static const double largeTitle = 20;
  static const double title1 = 14;
  static const double title2 = 13;

  static const double headline = 17;
  static const double body = 14;
  static const double callout = 16;
  static const double subhead = 15;
  static const double footnote = 13;
  static const double caption1 = 12;
  static const double caption2 = 12;
  static const double italic = 16;

  // LARGE TITLE
  static Widget large(
    BuildContext context,
    String text, {
    TextStyle? copyWith,
  }) {
    final themeColor = context.watch<ThemeProvider>().colors.onSurface;

    final base = GoogleFonts.nunito(
      fontSize: largeTitle,
      fontWeight: FontWeight.w800,
      color: themeColor,
      height: 1.25,
    );

    return Text(text, style: base.merge(copyWith));
  }

  // TITLE
  static Widget title(
    BuildContext context,
    String text, {
    FontWeight weight = FontWeight.w700,
    TextStyle? copyWith,
  }) {
    final themeColor = context.watch<ThemeProvider>().colors.onSurface;

    final base = GoogleFonts.nunito(
      fontSize: title1,
      fontWeight: weight,
      color: themeColor,
      height: 1.25,
    );

    return Text(text, style: base.merge(copyWith));
  }

  // SUBTITLE
  static Widget subtitle(
    BuildContext context,
    String text, {
    FontWeight weight = FontWeight.w600,
    TextStyle? copyWith,
  }) {
    final themeColor = context.watch<ThemeProvider>().colors.onSurface;

    final base = GoogleFonts.nunito(
      fontSize: title2,
      fontWeight: weight,
      color: themeColor.withOpacity(0.9),
      height: 1.25,
    );

    return Text(text, style: base.merge(copyWith));
  }

  // BODY TEXT
  static Widget bodyText(
    BuildContext context,
    String text, {
    TextStyle? copyWith,
  }) {
    final themeColor =
        context.read<ThemeProvider>().colors.onSurfaceVariant;

    final base = GoogleFonts.nunito(
      fontSize: body,
      fontWeight: FontWeight.w400,
      color: themeColor.withOpacity(0.85),
      height: 1.4,
    );

    return Text(text, style: base.merge(copyWith));
  }

  // CALLOUT
  static Widget calloutText(
    BuildContext context,
    String text, {
    FontWeight weight = FontWeight.w600,
    TextStyle? copyWith,
  }) {
    final themeColor =
        context.read<ThemeProvider>().colors.onSurfaceVariant;

    final base = GoogleFonts.nunito(
      fontSize: callout,
      fontWeight: weight,
      color: themeColor,
      height: 1.3,
    );

    return Text(text, style: base.merge(copyWith));
  }

  // SUBHEAD
  static Widget subheadText(
    BuildContext context,
    String text, {
    FontWeight weight = FontWeight.w500,
    TextStyle? copyWith,
  }) {
    final themeColor =
        context.watch<ThemeProvider>().colors.onSurfaceVariant;

    final base = GoogleFonts.nunito(
      fontSize: subhead,
      fontWeight: weight,
      color: themeColor,
      height: 1.3,
    );

    return Text(text, style: base.merge(copyWith));
  }

  // FOOTNOTE
  static Widget footnoteText(
    BuildContext context,
    String text, {
    FontWeight weight = FontWeight.w400,
    TextStyle? copyWith,
  }) {
    final themeColor =
        context.watch<ThemeProvider>().colors.onPrimaryContainer;

    final base = GoogleFonts.nunito(
      fontSize: footnote,
      fontWeight: weight,
      color: themeColor.withOpacity(0.85),
      height: 1.3,
    );

    return Text(text, style: base.merge(copyWith));
  }

  // CAPTION
  static Widget caption(
    BuildContext context,
    String text, {
    FontWeight weight = FontWeight.w400,
    TextStyle? copyWith,
  }) {
    final themeColor =
        context.watch<ThemeProvider>().colors.onSurfaceVariant;

    final base = GoogleFonts.nunito(
      fontSize: caption1,
      fontWeight: weight,
      color: themeColor.withOpacity(0.85),
      height: 1.3,
    );

    return Text(text, style: base.merge(copyWith));
  }

  // SMALL TEXT
  static Widget small(
    BuildContext context,
    String text, {
    TextStyle? copyWith,
  }) {
    final themeColor =
        context.watch<ThemeProvider>().colors.onBackground;

    final base = GoogleFonts.nunito(
      fontSize: caption2,
      fontWeight: FontWeight.w400,
      color: themeColor.withOpacity(0.9),
      height: 1.3,
    );

    return Text(text, style: base.merge(copyWith));
  }

  // ITALIC TEXT
  static Widget italicText(
    BuildContext context,
    String text, {
    FontWeight weight = FontWeight.w400,
    TextStyle? copyWith,
  }) {
    final themeColor =
        context.watch<ThemeProvider>().colors.onSurfaceVariant;

    final base = GoogleFonts.hind(
      fontSize: italic,
      fontStyle: FontStyle.italic,
      fontWeight: weight,
      color: themeColor.withOpacity(0.85),
      height: 1.4,
    );

    return Text(text, style: base.merge(copyWith));
  }
}
