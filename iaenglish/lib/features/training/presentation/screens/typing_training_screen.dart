import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // only for colors
import 'package:iaenglish/core/themes/typographie/cuppertinoText.dart';
import 'package:iaenglish/shared/widgets/stackcontainer.dart';
import 'dart:math';

import 'package:iaenglish/shared/widgets/wordtile.dart';



class TrainingReviewScreen extends StatefulWidget {
  @override
  State<TrainingReviewScreen> createState() => _TrainingReviewScreen();
}

class _TrainingReviewScreen extends State<TrainingReviewScreen> {

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Stackcontainer(
      enableSearchInput: true,
      posTop: 160,
      // BEAUTIFUL HEADER
      headerNavigation: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Training",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: CupertinoColors.label,
              ),
            ),

            Row(
              children: [
                HeaderButton(
                  icon: CupertinoIcons.add,
                  label: "Add",
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                HeaderButton(
                  icon: CupertinoIcons.play_arrow_solid,
                  label: "Practice",
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),

        const SizedBox(height: 30),
        // PREMIUM SEGMENTED CONTROL
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: CupertinoColors.systemGrey5,
            borderRadius: BorderRadius.circular(8),
          ),
          child: CupertinoSlidingSegmentedControl<int>(
            groupValue: selectedTab,
            thumbColor: const Color.fromARGB(255, 16, 73, 134),
            backgroundColor: CupertinoColors.systemGrey5,
            children: {
              0: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: CupertinoText.small(context, "All Words", copyWith: TextStyle(
                  color: Colors.white
                )),
              ),
              1: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: CupertinoText.small(context, "Favorites"),
              ),
              2: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: CupertinoText.small(context, "My Words"),
              ),
              3: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: CupertinoText.small(context, "Studied"),
              ),
            },
            onValueChanged: (value) {
              setState(() => selectedTab = value!);
            },
          ),
        ),
      ],

      // MAIN CONTENT
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 20),

              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: IndexedStack(
                    key: ValueKey(selectedTab),
                    index: selectedTab,
                    children: const [
                      AllWordsTab(),
                      _SavedWordsTab(),
                      _MyWordsTab(),
                      Center(child: Text("Studied words")),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}

// -------------------------------------------------------------
// HEADER BUTTON (PREMIUM CAPSULE)
// -------------------------------------------------------------
class HeaderButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const HeaderButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child:CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      borderRadius: BorderRadius.circular(10),
      color: CupertinoColors.systemGrey5.withOpacity(0.6),
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(icon, size: 15, color: CupertinoColors.activeBlue),
          const SizedBox(width: 6),
           CupertinoText.title(context, label, copyWith: TextStyle(
            fontSize: 13
           ))
        ],
      ),
    ));
  }
}

// -------------------------------------------------------------
// TAB 1: ALL WORDS
// -------------------------------------------------------------
class AllWordsTab extends StatelessWidget {
  const AllWordsTab();

  @override
  Widget build(BuildContext context) {
    final words = [
       WordTile(
        word: "grab",
        definition: "to take something quickly",
        icon: CupertinoIcons.hand_point_right,
        category: "Verb",
        route: 0,
        onTap: (route){
        }
      ),
      WordTile(
        word: "neighbor",
        definition: "a person living near you",
        icon: CupertinoIcons.person_2,
        category: "Noun",
        route: 0,
        onTap: (route){
        }
      ),
    ];

    return ListView(
      padding: const EdgeInsets.only(bottom: 20),
      children: words,
    );
  }
}

// -------------------------------------------------------------
// TAB 2: SAVED WORDS
// -------------------------------------------------------------
class _SavedWordsTab extends StatelessWidget {
  const _SavedWordsTab();

  @override
  Widget build(BuildContext context) {
    final savedWords = [
       WordTile(
        word: "carry",
        definition: "to hold and move something",
        icon: CupertinoIcons.arrow_up_right_square,
        category: "Verb", 
        route: 0,
        onTap: (route){
        }
      ),
    ];

    return ListView(
      padding: const EdgeInsets.only(bottom: 20),
      children: savedWords,
    );
  }
}

// -------------------------------------------------------------
// TAB 3: CUSTOM WORDS
// -------------------------------------------------------------
class _MyWordsTab extends StatelessWidget {
  const _MyWordsTab();

  @override
  Widget build(BuildContext context) {
    final myWords = [
       WordTile(
        word: "blockchain",
        definition: "a decentralized digital ledger",
        icon: CupertinoIcons.link,
        category: "Technology",
        route: 0,
        onTap: (route){
        }
      ),
    ];

    return ListView(
      padding: const EdgeInsets.only(bottom: 20),
      children: myWords,
    );
  }
}
