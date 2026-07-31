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

  static Widget large(BuildContext context, String text) {
    final themeColor = context.watch<ThemeProvider>().colors.cardTitle;

    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: largeTitle,
        fontWeight: FontWeight.w800,
        color: themeColor,
        height: 1.25,
      ),
    );
  }

  static Widget title(BuildContext context, String text,
      {FontWeight weight = FontWeight.w700}) {
    final themeColor = context.watch<ThemeProvider>().colors.cardTitle;

    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: title1,
        fontWeight: weight,
        color: themeColor,
        height: 1.25,
      ),
    );
  }

  static Widget subtitle(BuildContext context, String text,
      {FontWeight weight = FontWeight.w600}) {
    final themeColor = context.watch<ThemeProvider>().colors.cardTitle;

    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: title2,
        fontWeight: weight,
        color: themeColor.withOpacity(0.9),
        height: 1.25,
      ),
    );
  }

  static Widget bodyText(BuildContext context, String text) {

    final themeColor = context.read<ThemeProvider>().colors.cardDescription;
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: body,
        fontWeight: FontWeight.w400,
        color: themeColor.withOpacity(0.85),
        height: 1.4,
      ),
    );
  }

  static Widget calloutText(BuildContext context, String text,
      {FontWeight weight = FontWeight.w600}) {
    final themeColor = context.read<ThemeProvider>().colors.cardDescription;

    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: callout,
        fontWeight: weight,
        color: themeColor,
        height: 1.3,
      ),
    );
  }

  static Widget subheadText(BuildContext context, String text,
      {FontWeight weight = FontWeight.w500}) {
    final themeColor = context.watch<ThemeProvider>().colors.cardDescription;

    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: subhead,
        fontWeight: weight,
        color: themeColor,
        height: 1.3,
      ),
    );
  }

  static Widget footnoteText(BuildContext context, String text,
      {FontWeight weight = FontWeight.w400}) {
    final themeColor = context.watch<ThemeProvider>().colors.cardLabelText;

    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: footnote,
        fontWeight: weight,
        color: themeColor.withOpacity(0.85),
        height: 1.3,
      ),
    );
  }

  static Widget caption(BuildContext context, String text,
      {FontWeight weight = FontWeight.w400}) {
    final themeColor = context.watch<ThemeProvider>().colors.cardDescription;

    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: caption1,
        fontWeight: weight,
        color: themeColor.withOpacity(0.85),
        height: 1.3,
      ),
    );
  }

  static Widget small(BuildContext context, String text,
      {FontWeight weight = FontWeight.w600}) {
    final themeColor = context.watch<ThemeProvider>().colors.navigationItensText;

    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: caption2,
        fontWeight: weight,
        color: themeColor.withOpacity(0.9),
        height: 1.3,
      ),
    );
  }
}
