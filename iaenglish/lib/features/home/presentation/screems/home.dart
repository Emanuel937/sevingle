import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/features/home/data/card_data.dart';
import 'package:iaenglish/features/home/presentation/widgets/categories_card.dart';
import 'package:iaenglish/shared/widgets/morebutton.dart';
import 'package:iaenglish/shared/widgets/pageSkeleton.dart';
import 'package:iaenglish/shared/widgets/topNavitation.dart';
import 'package:iaenglish/ui/composants/navigation_bar_active_content.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/constant/size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names
  SizeValues Dimension = SizeValues();

  @override
  Widget build(BuildContext context) {
    final colors = Provider.of<ThemeProvider>(context).colors;
    Widget Content(){
        return  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Dimension.listSpacing),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CupertinoText.large(context, 'Books'),
                       CategoryNavigateButton(context, (){})
                    ]),

                    SizedBox(height: Dimension.sectionSpacing),
                    CupertinoText.bodyText(context, 'Voici le contenu sugéré par aujourdhui'),
                    SizedBox(height: Dimension.listSpacing),
                    SizedBox(
                      height: 181,
                      child: ListView.builder(
                        scrollDirection:Axis.horizontal,
                        padding: EdgeInsets.zero,
                        itemCount: cardData.length,
                        itemBuilder: (context, index) {
                          final data = cardData[index];
                          return HomeCategoriesCard(
                            title: data['title'],
                            totalContent: data['totalContent'],
                            imageUrl: data['imageUrl'],
                            description: data['description'],
                          );
                        },
                      ),
                    ),
                  ],
                );
    }

    
    return SkeletonPage(
        child: Stack(
          children: [
            const TopNavigationMenuBar(),
            NavigationContainerState (container: Content())
          ],
        ),
    );
  }
}
