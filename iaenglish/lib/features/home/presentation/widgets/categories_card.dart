import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
    //get the provider color ;
    BaseColors colors = context.read<ThemeProvider>().colors;
    return GestureDetector( 
      onTap: (){
        Navigator.pushNamed(context, RouteNames.book_list);
      },
      child:Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: colors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: colors.primaryShadown,
            blurRadius: colors.offSet,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.network(
              imageUrl,
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  height: 150,
                  color: Colors.grey[200],
                  child: const Center(child: CupertinoActivityIndicator()),
                );
              },
              errorBuilder: (context, error, stackTrace) => Container(
                height: 150,
                color: Colors.grey[200],
                child: const Center(
                  child: Icon(CupertinoIcons.exclamationmark_triangle, color: Colors.grey),
                ),
              ),
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoText.title(context, title),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: colors.cardLabelBackground,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '$totalContent items',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: colors.cardDescription,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
               CupertinoText.bodyText(context, description)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}