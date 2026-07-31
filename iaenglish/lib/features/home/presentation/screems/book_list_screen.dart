import 'package:flutter/cupertino.dart';
import 'package:iaenglish/config/constant/size.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/features/home/data/itens_list_data.dart';
import 'package:iaenglish/features/home/presentation/widgets/itens_card.dart';
import 'package:iaenglish/shared/widgets/navigatorPop.dart';
import 'package:iaenglish/shared/widgets/search_icon.dart';
import 'package:iaenglish/ui/composants/navigation_bar_active_content.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/constant/dimension.dart';

class BooksListScreen extends StatefulWidget {
  @override
  _BooksListStateScreen createState() => _BooksListStateScreen();
}

class _BooksListStateScreen extends State<BooksListScreen> {

  @override
  Widget build(BuildContext context) {

    final colors = Provider.of<ThemeProvider>(context).colors;
    final itens  = historyStories;
    SizeValues Dimension = SizeValues();
    
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(Dimension.containerPadding),
              width: Dimension.infinities,
              height: Dimension.infinities,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [ 
                      NavigatorPop(context:context),
                      CupertinoText.large(context, "Category"),
                    ]
              ),
               SearchIcon(colors)
              ])
            ),
                  NavigationContainerState(
                  container: ListView.builder(
                    itemCount: itens.length,
                    itemBuilder: (context, index){
                    
                    Map<String, dynamic> data = itens[index];

                    return BookListCard(
                        title:data["title"],
                        image: data["image"],
                    );
                  }),
                  posTop: 80,
                )
          ],
        ),
      ),
    );
  }
}

