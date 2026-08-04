import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:provider/provider.dart';

class BookListCard extends StatefulWidget {
  final String title;
  final String image;
  final bool isLessonScreen;
  final Function(int index)? onTap;
  BookListCard({
    required this.title,
    required this.image,
    required this.isLessonScreen,
    required this.onTap,
  });
  @override
  _BooksListCardState createState() => _BooksListCardState();
}

class _BooksListCardState extends State<BookListCard> {
  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;
    double imageDimension = widget.isLessonScreen ? 50 : 100;
    double carDimentions = widget.isLessonScreen ? 80 : 120;

    return GestureDetector(
      onTap: () {
        widget.onTap?.call(0);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              right: 10,
              left: widget.isLessonScreen ? 15 : 0,
            ),
            decoration: BoxDecoration(
              color: colors.surface, // old: cardBackground
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: colors.shadow, // old: primaryShadown
                  blurRadius: colors.elevationOffset,
                  offset: const Offset(0, 4),
                ),
                BoxShadow(
                  color: colors.shadow, // old: primaryShadown
                  blurRadius: colors.elevationOffset,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            height: carDimentions,
            margin: const EdgeInsets.only(bottom: 10, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // IMAGE
                Container(
                  width: imageDimension,
                  height: imageDimension,
                  clipBehavior: Clip.hardEdge,
                  decoration:  BoxDecoration(
                    color: colors.secondary.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: !widget.isLessonScreen ? Image.network(
                    widget.image,
                    fit: BoxFit.contain,
                  ): Icon(Icons.bookmark,
                  color: colors.secondary.withOpacity(0.8),
                  ),
                ),
                const SizedBox(width: 40),
                // TEXT + FOOTER
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          if (!widget.isLessonScreen)...[
                            CupertinoText.caption(context, "History of AI"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CupertinoText.title(context, widget.title),
                                Icon(
                                  CupertinoIcons.heart,
                                  color: colors.onSurfaceVariant,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  CupertinoIcons.headphones,
                                  color: colors.onSurfaceVariant,
                                ),
                                const SizedBox(width: 6),
                                CupertinoText.caption(context, "10 min :25s"),
                              ],
                            ),
                          ] else
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  SizedBox(height: 5),
                                  CupertinoText.title(context,"#N°1 ${widget.title.toUpperCase()}"),
                                  CupertinoText.bodyText(context, "lesson, Bargain, enable, recognize"),
                                ]),
                                Icon(
                                  CupertinoIcons.forward,
                                  size: 15,
                                  color: colors.onBackground.withOpacity(0.5),
                                ),
                              ],
                            ),
                        ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
