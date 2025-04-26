import 'package:flutter/cupertino.dart';
import 'package:iaenglish/ui/composants/navigation_bar_active_content.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/theme/app_theme.dart';
import 'package:iaenglish/config/constant/dimension.dart';
import 'package:google_fonts/google_fonts.dart';

class BooksList extends StatefulWidget {
  @override
  _BooksListState createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  @override
  Widget build(BuildContext context) {
    final colors = Provider.of<ThemeProvider>(context).colors;

    return CupertinoPageScaffold(
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(Dimension.size.containerPadding),
              width: Dimension.size.infinities,
              height: Dimension.size.infinities,
              child: Text(
                'Nature and IA',
                style: GoogleFonts.playfairDisplay(  // Corrected GoogleFonts and font name
                  fontSize: Dimension.font.extraLarge,
                  fontWeight: FontWeight.w600,
                  color: colors.cardTitle,
                ),
              )

            ),
                  NavigationContainerState(
                  container: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index){
                    return BookListCard();
                  }),
                  posTop: 80,
                )
          ],
        ),
      ),
    );
  }
}


class BookListCard extends StatefulWidget{
  @override
  _BooksListCardState createState ()=>_BooksListCardState();
}


class _BooksListCardState extends State<BookListCard>{

  @override
  Widget build(BuildContext context){
    final colors = Provider.of<ThemeProvider>(context).colors;
    return Column(
                children: [
                  Container(
                    height: 80,
                    margin: EdgeInsets.only(bottom: 30, top:20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Image Section
                        Container(
                          width: 140,
                          height: 80,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Image.network(
                            'https://storylab.ai/wp-content/uploads/2023/09/Write-your-eBook-with-the-help-of-AI.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Text + Footer Section
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Header caption',
                                style: TextStyle(
                                  fontSize: Dimension.font.small,
                                  color: colors.cardDescription,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'History of IAs',
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                      fontSize: Dimension.font.subtitle,
                                      color: colors.cardTitle,
                                      fontWeight: FontWeight.w500
                                    )),
                                  ),
                                  Icon(
                                    CupertinoIcons.heart,
                                    color: colors.iconInactive,
                                    size: Dimension.font.title,
                                    
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    CupertinoIcons.headphones,
                                    size: Dimension.font.small,
                                    color: colors.iconInactive,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    '10 min :25s',
                                    style: TextStyle(
                                      fontSize: Dimension.font.small,
                                      color: colors.cardDescription,
                                    ),
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
              );
  }
}