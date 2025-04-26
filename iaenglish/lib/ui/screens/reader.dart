import 'package:flutter/cupertino.dart';
import 'package:iaenglish/ui/composants/navigation_bar_active_content.dart';
import 'package:iaenglish/ui/composants/top_navigation.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/theme/app_theme.dart';
import 'package:iaenglish/config/constant/dimension.dart';
import 'package:flutter_html/flutter_html.dart' as html;
import 'package:google_fonts/google_fonts.dart';


class Reader extends StatefulWidget{

  @override
  _ReaderState createState() => _ReaderState();

}


class _ReaderState extends State<Reader>{
  @override
  Widget build(BuildContext context){

    final colors = Provider.of<ThemeProvider>(context).colors;
     const text = '''
 <div>
          <p><strong>Anna e:</strong> Hie! How are you today?</p>
          <p><strong>Ben:</strong> I'm good, thank you! And you?</p>
          <p><strong>Anna:</strong> I'm doing well. What are you doing?</p>
          <p><strong>Ben:</strong> I'm going to the park. Do you want to come?</p>
          <p><strong>Anna:</strong> Sure! I love the park.</p>
          <p><strong>Ben:</strong> Great! Let's go.</p>
          <p><strong>Anna:</strong> Wait! I need to get my jacket.</p>
          <p><strong>Ben:</strong> Okay, I’ll wait here.</p>
          <p><strong>Anna:</strong> I’m ready. Let’s go now!</p>
          <p><strong>Ben:</strong> Perfect. It’s a nice day for a walk .</p>

        </div>
     ''';
    return CupertinoPageScaffold(
      child:SafeArea(
        child:Stack(
          children: [
            Container(
              color: colors.homeStackFirstChildBackground,
              width: Dimension.size.infinities,
              height: Dimension.size.infinities,
              padding: EdgeInsets.all(Dimension.size.containerPadding),
              child: Column(children: [

                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Icon(CupertinoIcons.back,
                        color: colors.cardTitle,
                        size: Dimension.font.title,
                      ),
                        Text(
                            'Nature and IA',
                            style: GoogleFonts.playfairDisplay(  // Corrected GoogleFonts and font name
                              fontSize: Dimension.font.extraLarge,
                              fontWeight: FontWeight.w600,
                              color: colors.cardTitle,
                            ),
                          ),
                         Icon(CupertinoIcons.search,
                          color: colors.iconInactive,
                          size: Dimension.font.title,
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(Dimension.size.containerPadding),
                    child:html.Html(data:text)
                  ),
                  
                ],
              ),
            ),
            Positioned(
                    left: 13,
                    bottom:60,
                    child:
                    Container(
                        padding:  EdgeInsets.all(10),
                        height: 90,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 32, 228, 170),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: colors.primaryShadown, // Use colors.primaryShadow from ThemeProvider
                              blurRadius: 10,
                              offset: const Offset(0, -3),
                            ),
                          ],
                        ),
                      child:const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Icon(CupertinoIcons.plus,
                       ),
                       Icon(CupertinoIcons.play),
                    ],))
                  )
          ],
        )
        )
      );
  }
}
