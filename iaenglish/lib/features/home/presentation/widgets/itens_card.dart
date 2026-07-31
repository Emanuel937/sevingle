
import 'package:flutter/cupertino.dart';
import 'package:iaenglish/config/constant/dimension.dart';
import 'package:iaenglish/core/routes/routes_name.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:provider/provider.dart';

class BookListCard extends StatefulWidget{
  final String title;
  final String image;

  BookListCard({required this.title, required this.image});
  @override
  _BooksListCardState createState ()=>_BooksListCardState();
}


class _BooksListCardState extends State<BookListCard>{

  void navigator(){
      Navigator.pushNamed(context, RouteNames.book_list_details);
  }

  @override
  Widget build(BuildContext context){
    final colors = Provider.of<ThemeProvider>(context).colors;
    return GestureDetector(
      
      onTap:navigator,
      child: Column(
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
                             widget.image,
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
                              CupertinoText.caption(context, "History of AI"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 CupertinoText.title(context, widget.title),
                                  Icon(
                                    CupertinoIcons.heart,
                                    color: colors.iconInactive,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    CupertinoIcons.headphones,
                                    color: colors.iconInactive,
                                  ),
                                  const SizedBox(width: 6),
                                  CupertinoText.caption(context, "10 min :25s")
                                ],
                              ),
                            ],
                          ),
                        ),
                      
                      ],
                    ),
                  ),
                ],
              ));
  }
}