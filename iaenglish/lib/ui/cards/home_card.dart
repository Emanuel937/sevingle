import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iaenglish/config/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/constant/dimension.dart';


class ContentCard extends StatelessWidget {
  final String title;
  final int totalContent;
  final String imageUrl;
  final String description;

  const ContentCard({
    super.key,
    required this.title,
    required this.totalContent,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {

    //get the provider color ;
     final colors = Provider.of<ThemeProvider>(context).colors;

    return Container(
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
          // Image cover
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.network(
              imageUrl,
              height: 80,
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

                    Text(
                      title,
                      style: TextStyle(
                        fontSize: Dimension.font.subtitle,
                        fontWeight: FontWeight.w700,
                        color: colors.cardTitle,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: colors.cardLabelBackground,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '$totalContent items',
                        style: TextStyle(
                          fontSize: Dimension.font.caption,
                          fontWeight: FontWeight.w600,
                          color: colors.cardLabelText,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: Dimension.font.body,
                    color: colors.cardDescription,
                    height: 1.5,
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