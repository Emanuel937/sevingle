import 'package:flutter/cupertino.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/shared/widgets/topNavigationItens.dart';
import 'package:provider/provider.dart';

class TopNavigationMenuBar extends StatelessWidget {
  const TopNavigationMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.watch<ThemeProvider>().colors;

    return Row(
      children: [
        Topnavigationitens(
          icon: CupertinoIcons.home,
          label: 'PodCast',
          color: colors.primary.withOpacity(
            0.64
           // old: iconInactive
        )),
        Topnavigationitens(
          icon: CupertinoIcons.tv,
          label: 'TV',
          color: colors.secondary.withOpacity(
            0.3
          ), // old: navigationItensBackground
        ),
        Topnavigationitens(
          icon: CupertinoIcons.wifi_exclamationmark,
          label: 'Training',
          color:  colors.secondary.withOpacity(
            0.3
          ), // old: navigationItensBackground
        ),
      ],
    );
  }
}
