import 'package:flutter/cupertino.dart';
import 'package:iaenglish/ui/composants/navigation_bar_active_content.dart';
import 'package:provider/provider.dart';
import 'package:iaenglish/config/theme/app_theme.dart';
import 'package:iaenglish/ui/composants/top_navigation.dart';
import 'package:iaenglish/ui/cards/home_card.dart';
import 'package:iaenglish/config/constant/dimension.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> cardData = [
    {
      'title': 'Technology Updates',
      'totalContent': 24,
      'imageUrl': 'https://media.istockphoto.com/id/1488335095/vector/3d-vector-robot-chatbot-ai-in-science-and-business-technology-and-engineering-concept.jpg?s=612x612&w=0&k=20&c=MSxiR6V1gROmrUBe1GpylDXs0D5CHT-mn0Up8D50mr8=',
      'description': 'Stay ahead with the latest tech innovations and breakthroughs.',
    },
    {
      'title': 'Travel Adventures',
      'totalContent': 15,
      'imageUrl': 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
      'description': 'Explore breathtaking destinations and travel tips.',
    },
    {
      'title': 'Food & Cuisine',
      'totalContent': 32,
      'imageUrl': 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd',
      'description': 'Discover delicious recipes and culinary trends.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Provider.of<ThemeProvider>(context).colors;


    Widget Content(){
        return  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: const Icon(CupertinoIcons.moon_fill),
                          onPressed: () => context.read<ThemeProvider>().toggleTheme(),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimension.size.sectionSpacing),
                    Text(
                      'Categories',
                       style: GoogleFonts.playfairDisplay(  // Corrected GoogleFonts and font name
                  fontSize: Dimension.font.extraLarge,
                  fontWeight: FontWeight.w600,
                  color: colors.cardTitle,
                ),
                    ),
                    SizedBox(height: Dimension.size.sectionSpacing),
                    Text(
                      'Voici le contenu suggéré pour aujourd’hui',
                      style: TextStyle(
                        fontSize: Dimension.font.body,
                        color: colors.cardDescription,
                      ),
                    ),
                    SizedBox(height: Dimension.size.listSpacing),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: cardData.length,
                        itemBuilder: (context, index) {
                          final data = cardData[index];
                          return ContentCard(
                            title: data['title'],
                            totalContent: data['totalContent'],
                            imageUrl: data['imageUrl'],
                            description: data['description'],
                          );
                        },
                      ),
                    ),
                  ],
                );
    }

    return CupertinoPageScaffold(
      child: SafeArea(
        child: Stack(
          children: [
            const NavigationMenuBar(),
            NavigationContainerState (container: Content())
          ],
        ),
      ),
    );
  }
}
