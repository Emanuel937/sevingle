
import 'package:flutter/cupertino.dart';
import 'package:iaenglish/config/constant/size.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/features/home/data/itens_list_data.dart';
import 'package:iaenglish/shared/widgets/search_icon.dart';
import 'package:iaenglish/ui/composants/navigation_bar_active_content.dart';
import 'package:provider/provider.dart';

class Stackcontainer extends StatefulWidget {

  final Widget child;
  final List<Widget> headerNavigation;
  bool enableSearchInput = false;
  double posTop = 90;


  Stackcontainer({required this.child, required this.headerNavigation, required this.enableSearchInput, this.posTop = 40});
  @override
  _Stackcontainer createState() => _Stackcontainer();

}

class _Stackcontainer extends State<Stackcontainer> {

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
              child:Column( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widget.headerNavigation
              ),
            ),
            NavigationContainerState(
              container: widget.child,
              posTop: widget.posTop,
            )
          ],
        ),
      ),
    );
  }
}

