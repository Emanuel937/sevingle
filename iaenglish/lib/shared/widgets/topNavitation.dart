import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/shared/widgets/topNavigationItens.dart';
import 'package:provider/provider.dart';

class TopNavigationMenuBar extends StatelessWidget {
  const TopNavigationMenuBar({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Provider.of<ThemeProvider>(context).colors;

    return Row(
      children: [
         Topnavigationitens(
          icon: CupertinoIcons.home, 
          label: 'PodCast',
          color: colors.iconInactive,
        ),
        Topnavigationitens(
          icon: CupertinoIcons.tv,
          label: 'TV',
          color: colors.navigationItensBackground,
        ),
        Topnavigationitens(
          icon: CupertinoIcons.wifi_exclamationmark,
          label: 'Training',
          color:colors.navigationItensBackground ,
        ),
        
      ],
    );
  }
}



