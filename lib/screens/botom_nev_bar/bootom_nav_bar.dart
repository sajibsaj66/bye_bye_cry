import 'package:flutter/material.dart';

import '../../compoment/shared/screen_size.dart';
import '../../compoment/utils/color_utils.dart';

class CustomBottomAppBar extends StatefulWidget {
  final Function(int) onPressed;
  final int? index;
  const CustomBottomAppBar({Key? key, required this.onPressed, this.index})
      : super(key: key);

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int currentIndex = 0;

  @override
  void initState() {
    currentIndex = widget.index ?? 0;
    super.initState();
  }

  final String navigationBarFirstImageS = 'asset/images/icon_png/home.png';
  final String navigationBarSecondImageS = 'asset/images/icon_png/sounds.png';
  final String navigationBarThirdImageS = 'asset/images/icon_png/mix.png';
  final String navigationBarForthImageS = 'asset/images/icon_png/playlist.png';
  final String navigationBarFifthImageS = 'asset/images/icon_png/blog.png';

  final String navigationBarFirstImage = 'asset/images/icon_png/home_color.png';
  final String navigationBarSecondImage =
      'asset/images/icon_png/sound_color.png';
  final String navigationBarThirdImage = 'asset/images/icon_png/mix_color.png';
  final String navigationBarForthImage =
      'asset/images/icon_png/playList_color.png';
  final String navigationBarFifthImage = 'asset/images/icon_png/home_color.png';

  @override
  Widget build(BuildContext context) {
    final width = ScreenSize(context).width;
    return Container(
      height: width * 0.16,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.1), blurRadius: 6, spreadRadius: 6)
      ]),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  navigationBarFirstImageS,
                  // currentIndex == 0
                  //     ? navigationBarFirstImageS
                  //     : navigationBarFirstImage,
                  scale: 1.4,
                  color:
                      currentIndex == 0 ? primaryGreenColor : primaryGreyColor,
                ),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  navigationBarSecondImageS,
                  // currentIndex == 1
                  //     ? navigationBarSecondImageS
                  //     : navigationBarSecondImage,
                  scale: 1.4,
                  color:
                      currentIndex == 1 ? primaryGreenColor : primaryGreyColor,
                ),
              ),
              label: "Sounds"),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                navigationBarThirdImageS,
                // currentIndex == 2
                //     ? navigationBarThirdImageS
                //     : navigationBarThirdImage,
                scale: 1.4,
                color: currentIndex == 2 ? primaryGreenColor : primaryGreyColor,
              ),
            ),
            label: "Mix",
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  // navigationBarForthImageS,
                  currentIndex == 3
                      ? navigationBarForthImage
                      : navigationBarForthImageS,
                  scale: 1.3,
                 // color: currentIndex == 3 ? primaryGreenColor : null,
                ),
              ),
              label: "Playlist"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  navigationBarFifthImageS,
                  // currentIndex == 4
                  //     ? navigationBarFifthImageS
                  //     : navigationBarFifthImage,
                  scale: 1.4,
                  color:
                      currentIndex == 4 ? primaryGreenColor : primaryGreyColor,
                ),
              ),
              label: "Blog"),
        ],
        type: BottomNavigationBarType.fixed,
        elevation: 30,
        backgroundColor: secondaryPinkColor,
        selectedItemColor: primaryGreenColor,
        showUnselectedLabels: true,
        selectedLabelStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        onTap: (index) {
          setState(() {
            currentIndex = index;
            widget.onPressed(index);
          });
          print("$index");
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
