

import 'package:flutter/material.dart';
import 'package:todoapp/screens/home_screen.dart';
import 'package:todoapp/screens/menu_screen.dart';

import 'menu_screen.dart';

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> with SingleTickerProviderStateMixin {
bool isClosed =true;
final duration =const Duration(milliseconds: 300);
late double screenWidth, screenHeight;
late AnimationController _animationController;
late Animation<double> _scaleAnimation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration:duration );
    _scaleAnimation = Tween<double>(begin: 1, end: 0.85).animate(_animationController);
      }
      @override
        void dispose() {
          _animationController.dispose();
          super.dispose();
        }
      @override

      Widget build(BuildContext context) {
        Size screenSize= MediaQuery.of(context).size;
        screenHeight =screenSize.height;
        screenWidth = screenSize.width;
        onMenuClose(){
          setState(() {
            if (isClosed){
              _animationController.forward();

            }
            else{
              _animationController.reverse();
            }
            isClosed =!isClosed;
          });
        }
        return Stack(
          children: [
         MenuScreen(
          screenWidth: screenWidth,
           onMenuClose: onMenuClose,
         ),
         HomeScreen(
            animationController: _animationController,
           duration: duration,
           isClosed: isClosed,
           scaleAnimation: _scaleAnimation,
           screenHeight : screenHeight,
           screenWidth: screenWidth,
           onMenuClose: onMenuClose,
         )
          ],
         
        );
      }
    }
    
 