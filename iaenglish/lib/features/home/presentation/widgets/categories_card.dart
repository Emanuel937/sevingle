import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/routes/routes_name.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/core/utils/limittext.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/constant/dimension.dart';

class HomeCategoriesCard extends StatefulWidget {
  final String title;
  final int totalContent;
  final String imageUrl;
  final String description;

  const HomeCategoriesCard({
    super.key,
    required this.title,
    required this.totalContent,
    required this.imageUrl,
    required this.description,
  });

  @override
  State<HomeCategoriesCard> createState() => _HomeCategoriesCardState();
}

class _HomeCategoriesCardState extends State<HomeCategoriesCard> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final BaseColors colors = context.read<ThemeProvider>().colors;
    final double cardHeight = MediaQuery.of(context).size.height * 0.32;

    return GestureDetector(
      onTapDown: (_) => setState(() => pressed = true),
      onTapCancel: () => setState(() => pressed = false),
      onTapUp: (_) => setState(() => pressed = false),
      onTap: () {
        Navigator.pushNamed(context, RouteNames.book_list);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 140),
        curve: Curves.easeOut,
        width: 260,
        margin: const EdgeInsets.only(right: 26),
        transform: Matrix4.identity()
          ..scale(pressed ? 0.97 : 1.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: colors.shadow.withOpacity(0.06),
              blurRadius: pressed ? 5 : 5,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Stack(
            children: [
              // IMAGE WITH GRADIENT OVERLAY
              SizedBox(
                height: cardHeight,
                width: double.infinity,
                child: Stack(
                  children: [
                    // IMAGE
                    Positioned.fill(
                      child: Image.network(
                        widget.imageUrl,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Container(
                            color: Colors.grey[200],
                            child: const Center(
                              child: CupertinoActivityIndicator(),
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey[200],
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.exclamationmark_triangle,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // GRADIENT OVERLAY
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.05),
                              Colors.black.withOpacity(0.45),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // CONTENT
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: colors.surface.withOpacity(0.92),
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(22),
                    ),
                    border: Border(
                      top: BorderSide(
                        width: 0.4,
                        color: colors.onBackground.withOpacity(0.15),
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // TITLE + BADGE
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CupertinoText.title(
                              context,
                              widget.title,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      // DESCRIPTION
                      CupertinoText.bodyText(
                        context,
                        limitedText(widget.description, max:30),
                        copyWith: TextStyle(
                          color: colors.onSurface.withOpacity(0.75),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
