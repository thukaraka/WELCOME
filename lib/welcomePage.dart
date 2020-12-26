import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class welcomePage extends StatefulWidget {
  @override
  _welcomePageState createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
   // Navigator.of(context).push(
     // MaterialPageRoute(builder: (_) => HomePage()),
  //  );
  }



  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Best Quality",
          image: Align(
            child: Image.asset('assets/images/image1.jpg', height:300,width: 350.0),
            alignment: Alignment.bottomCenter,
          ),
          body:
          "Best Quality Products at Minimum Cost!",

          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fast Delivery",
          image: Align(
            child: Image.asset('assets/images/image2.jpg',height:300 ,width: 350.0),
            alignment: Alignment.bottomCenter,
          ),
          body:
          "Fastest Delivery Service in Just 3 hours!",

          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Great Discounts",
          image: Align(
            child: Image.asset('assets/images/Image3.jpg',height:300, width: 350.0),
            alignment: Alignment.bottomCenter,
          ),
          body:
          "Find Great Deals and Discount on Every Occasion!",

          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Welcome to HOUSE OF CAKE",
          image: Align(
            child: Image.asset('assets/images/image5.png', height:300, width: 350.0),
            alignment: Alignment.bottomCenter,
          ),
          body:"The Easiest Way to Send Cakes and Gifts for Your Love Ones!",

          decoration: pageDecoration,
          footer:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new SizedBox(
                  width: 200.0,
                  height: 40.0,
                  child: new RaisedButton(
                    color: Colors.red,

                    child: Text("LOGIN",style: TextStyle(fontSize: 20),),
                    shape: StadiumBorder(),
                    onPressed: (){},
                  ),

                ),
                new SizedBox(height:10),
                new SizedBox(
                  width: 200.0,
                  height: 40.0,
                  child: new RaisedButton(
                    color: Colors.red,
                    child: Text("SIGN UP",style: TextStyle(fontSize: 20),),
                    shape: StadiumBorder(),
                    onPressed: (){},
                  ),

                ),


              ],
            ),
          ),

        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('SKIP',style: TextStyle(fontWeight: FontWeight.bold,fontSize:18)),
      next: const Text('NEXT',style: TextStyle(fontWeight: FontWeight.bold,fontSize:18)),
      done: const Text('GOT IT', style: TextStyle(fontWeight: FontWeight.bold,fontSize:18)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),

        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
