import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/out_boarding_content.dart';
import '../widgets/out_boarding_indecator.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  int _currentPage = 0;

  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();

    Future.delayed(Duration(seconds: 3) ,(){
      if(_currentPage<2){
        _pageController.nextPage(duration: Duration(seconds: 2), curve: Curves.ease);
      }
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Visibility(
              visible: _currentPage < 2,
              maintainState: true,
              maintainAnimation: true,
              maintainSize: true,
              child: TextButton(
                onPressed: () {
                  _pageController.animateToPage(2,
                      duration: Duration(seconds: 1), curve: Curves.ease);
                },
                child: Text(
                  'Skip ',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 0,
              maxWidth: double.infinity,
              minHeight: 0,
              maxHeight: 500,
            ),
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;

                  Future.delayed(Duration(seconds: 3) ,(){
                    if(_currentPage<2){
                      _pageController.nextPage(duration: Duration(seconds: 2), curve: Curves.ease);
                    }
                  });
                });
              },
              children: [
                OutBoardingContent(
                  image: 'images/ob_image_1.svg',
                  title: 'Page 1 ',
                  desc:
                      'It is a long established fact that a reader will be distracted '
                      'by the readable content of a page when looking at its layout.',
                ),
                OutBoardingContent(
                  image: 'images/ob_image_2.svg',
                  title: 'Page 2 ',
                  desc:
                      'It is a long established fact that a reader will be distracted '
                      'by the readable content of a page when looking at its layout.',
                ),
                OutBoardingContent(
                  image: 'images/ob_image_3.svg',
                  title: 'Page 3 ',
                  desc:
                      'It is a long established fact that a reader will be distracted '
                      'by the readable content of a page when looking at its layout.',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutBoardingIndecator(marginEnd: 10, selected: _currentPage == 0),
              OutBoardingIndecator(marginEnd: 10, selected: _currentPage == 1),
              OutBoardingIndecator(selected: _currentPage == 2),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: _currentPage == 0 ? Colors.grey : Colors.black,
                onPressed: () {
                  _pageController.previousPage(
                      duration: Duration(seconds: 1), curve: Curves.ease);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                ),
              ),
              Visibility(
                visible: _currentPage < 2,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: IconButton(
                  onPressed: () {
                    _pageController.nextPage(
                        duration: Duration(seconds: 1), curve: Curves.ease);
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Visibility(
            visible: _currentPage == 2,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login_screen');
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50)),
                child: Text(
                  'Start ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, color: Colors.yellow),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
