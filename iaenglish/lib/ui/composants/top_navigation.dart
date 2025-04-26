import 'package:flutter/cupertino.dart';
import 'package:iaenglish/config/colors/colors.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/theme/app_theme.dart';

class NavigationMenuBar extends StatelessWidget {
  const NavigationMenuBar({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Provider.of<ThemeProvider>(context).colors;

    return Row(
      children: [
         NavigationItens(
          icon: CupertinoIcons.home, 
          label: 'PodCast',
          color: colors.iconInactive,
        ),
          NavigationItens(
          icon: CupertinoIcons.tv,
          label: 'TV',
          color: colors.navigationItensBackground,
        ),
         NavigationItens(
          icon: CupertinoIcons.wifi_exclamationmark,
          label: 'Training',
          color:colors.navigationItensBackground ,
        ),
        
      ],
    );
  }
}


class NavigationItens extends StatelessWidget {
  final IconData icon; // Can be used with CupertinoIcons
  final Color color;
  final String label;

  const NavigationItens({super.key, 
    required this.icon,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Provider.of<ThemeProvider>(context).colors;
    return Column(
       // Ensure both icon and text are centered
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30, top:30, right: 20 ), 
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: Icon(
            icon,
            color: colors.navigationItensIcon,
            size: 23,
          ),
        ),
        const SizedBox(height: 4), // Space between icon and label
        Container(
          margin: const EdgeInsets.only(left: 30, top:10,right: 20 ), // Adjusted margin for better spacing
          child:Text(
          label,
          style:  TextStyle(
            color: colors.navigationItensText,
            fontWeight: FontWeight.w500,
          ),
        )),
      ],
    );
  }
}
