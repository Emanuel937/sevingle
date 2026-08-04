import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/routes/routes_name.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/features/home/data/itens_list_data.dart';
import 'package:iaenglish/features/home/presentation/widgets/booklistheader.dart';
import 'package:iaenglish/features/home/presentation/widgets/itens_card.dart';
import 'package:iaenglish/shared/widgets/stackcontainer.dart';
import 'package:provider/provider.dart';

class BooksListScreen extends StatefulWidget {
  const BooksListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BooksListStateScreen createState() => _BooksListStateScreen();
}

class _BooksListStateScreen extends State<BooksListScreen> {

  @override
  Widget build(BuildContext context) {

    final itens  = historyStories;
    final colors = Provider.of<ThemeProvider>(context).colors;

    return Stackcontainer(
      posTop: 90,
      enableSearchInput: true,
      headerNavigation: [
       BookListHearder(
          context: context, 
          title: "Books List",
          colors: colors),
      ],
      child:ListView.builder(
          itemCount: itens.length,
          itemBuilder: (context, index){
          Map<String, dynamic> data = itens[index];
          return BookListCard(
            onTap: (index) {
              Navigator.pushNamed(context, RouteNames.book_list_details);
            },
            isLessonScreen: false,
              title:data["title"],
              image: data["image"],
          );
        }),
      
    );
  }
}

