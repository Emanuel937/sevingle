import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/routes/routes_name.dart';
import 'package:iaenglish/core/themes/colors/abstract.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/constant/dimension.dart';


class HomeCategoriesCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final BaseColors colors = context.read<ThemeProvider>().colors;

    final double cardHeight = MediaQuery.of(context).size.height * 0.32;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RouteNames.book_list);
      },
      child: Container(
        width: 260,
        margin: const EdgeInsets.only(right: 26),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.1, color: colors.onBackground.withOpacity(0.7))
       
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IMAGE
              SizedBox(
                height: cardHeight * 0.40,
                width: double.infinity,
                child: Image.network(
                  imageUrl,
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

              // CONTENT
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // TITLE + BADGE
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CupertinoText.title(context, title),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: colors.tertiary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: CupertinoText.small(
                              context,
                              "$totalContent items",
                              copyWith:TextStyle(
                                color: colors.tertiary.withOpacity(1),
                                fontWeight: FontWeight.w500
                              )
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
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
