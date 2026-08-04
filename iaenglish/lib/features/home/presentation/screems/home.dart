import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/features/home/data/card_data.dart';
import 'package:iaenglish/features/home/presentation/widgets/calltoaction_learn.dart';
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
    
    final         colors = Provider.of<ThemeProvider>(context).colors;
    SizeValues dimension = SizeValues();
                    

    Widget Content(){
        return  ListView(
              children: [
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.only(left:dimension.cardPadding, right:dimension.cardPadding),
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  CupertinoText.title(context, 'Books'),
                    MoreButton(context, (){})
                ])),
                SizedBox(height: Dimension.listSpacing),
                Container(
                  padding: EdgeInsets.only(left:dimension.cardPadding, right:dimension.cardPadding),
                  child:SizedBox(
                  height: 181,
                  child: ListView.builder(
                    scrollDirection:Axis.horizontal,
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
                )),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(left:dimension.cardPadding, right:dimension.cardPadding),
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(16, 54, 244, 124),
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(10)),
                    border: const Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 0.1,
                        ),
                      bottom: BorderSide(
                          color: Colors.black,
                          width: 0.1,
                        ),
                      ),
                      
                  ),
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Badget(context: context, text: "A1 to C4", style: TextStyle()),
                          CupertinoText.title(context, 'Start learning now'),
                      
                    ]),
                    SizedBox(height: Dimension.sectionSpacing),
                      LearnCallToActionCard(),
                    ],
                  ),
                )
          ],
      );
    }
    return SkeletonPage(
        child: Stack(
          children: [
            TopNavigationMenuBar(),
            NavigationContainerState (
              posTop: 205,
              padding: 0,
              container: Content()
              )
          ],
        ),
    );
  }
}


Widget Badget({
  required BuildContext context,
  required String text,
  required TextStyle style,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
    decoration: BoxDecoration(
      color: Colors.blue.withOpacity(0.12), // fond doux
      borderRadius: BorderRadius.circular(12), // arrondi premium
      border: Border.all(
        color: Colors.blue.withOpacity(0.35), // bord léger
        width: 1,
      ),
    ),
    child: CupertinoText.small(
      context,
      text,
      copyWith: style.copyWith(
        color: Colors.blue.shade700, // texte harmonisé
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
