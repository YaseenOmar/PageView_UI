import 'package:flutter/material.dart';
import 'package:ui_revision2/screens/out_boarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                colors: [
                  Colors.yellow.shade400,
                  Colors.yellow.shade500,
                  Colors.grey.shade500,
                ],
              )
            ),
            child: Center(
              child: Text(
                'Splash Screen ',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),

          ),
          PositionedDirectional(
            bottom: 100,
              start: 70,
              end: 70,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/out_boarding_screen');
                },
                  child:Text(
                    'Lets Start ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32
                    ),

                  ),
              ),

          ),
        ] ,
      ),

    );
  }
}
