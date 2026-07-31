import 'package:flutter/cupertino.dart';
import 'package:iaenglish/config/constant/size.dart';
import 'package:iaenglish/core/themes/provider/themeProvide.dart';
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/shared/widgets/navigatorPop.dart';
import 'package:provider/provider.dart';
import 'package:flutter_html/flutter_html.dart' as html;


class BookDetailsScreen extends StatefulWidget{

  @override
  _BookDetailsScreen createState() => _BookDetailsScreen();

}


class _BookDetailsScreen extends State<BookDetailsScreen>{
  @override
  Widget build(BuildContext context){

    final colors = Provider.of<ThemeProvider>(context).colors;
    SizeValues Dimension = SizeValues();
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
              width: Dimension.infinities,
              height: Dimension.infinities,
              padding: EdgeInsets.all(Dimension.containerPadding),
              child: Column(children: [

                  Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      
                        NavigatorPop(context: context),
                         CupertinoText.large(context, "Title"),
                         
                    ],
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(Dimension.containerPadding),
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
