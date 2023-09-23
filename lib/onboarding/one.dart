import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';


class OnboardingOne extends StatelessWidget {
   OnboardingOne({super.key});
  final Uri formLink =  Uri.parse('https://speedyloansonline.online/test.php?source=5');
  final Uri privacyLink =  Uri.parse('https://speedyloansonline.online/privacy-rights');
  final Uri termLink =  Uri.parse('https://speedyloansonline.online/terms-and-conditions');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80), bottomRight: Radius.circular(80)),
              color: Color(0xff5CD2E6),
            ),
            height: 200,
            child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Apply ', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    Text('Now ', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow
                    ),),
                  ],
                )
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(

              color: Color(0xff5CD2E6),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))

            ),
            child: Row(
              children: [
                Center(child: Container(
                    decoration:BoxDecoration(
                color: Color(0xffF4E869),

                borderRadius: BorderRadius.circular(30)

                    ),
                    child: Lottie.asset('images/animation_lmw5wax7.json' , height: 100, width: 100,))),
                Spacer(),

                Text('Fast And Easy Transaction', style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(

              color: Color(0xff5CD2E6),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))

            ),
            child: Row(
              children: [
                Center(child: Container(
                    decoration:BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(30)

                    ),
                    child: Lottie.asset('images/animation_lmw6i4vf.json' , height: 100, width: 100,))),
                Spacer(),

                Text('24/7  Customer Support', style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(

              color: Color(0xff5CD2E6),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))

            ),
            child: Row(
              children: [
                Center(child: Container(
                    decoration:BoxDecoration(
                color: Color(0xffF4E869),

                borderRadius: BorderRadius.circular(30)

                    ),
                    child: Lottie.asset('images/animation_lmw839qk.json' , height: 100, width: 100,))),
                Spacer(),

                Text('Fast Response from lender', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ],
            ),
          ),
          ElevatedButton(onPressed: (){
            launchUrl(formLink, mode: LaunchMode.inAppWebView,
              webViewConfiguration: const WebViewConfiguration(
                  headers: <String, String>{'my_header_key': 'my_header_value'}),
            );

          }, child: Text('Get Started', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),), style: ElevatedButton.styleFrom(
            primary: Color(0xffF78CA2),
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            )
          ),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              TextButton(onPressed: (){
                launchUrl(privacyLink, mode: LaunchMode.inAppWebView,
                  webViewConfiguration: const WebViewConfiguration(
                      headers: <String, String>{'my_header_key': 'my_header_value'}),
                );
              }, child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Privacy Policy', style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              )),
              TextButton(onPressed: (){
                launchUrl(termLink, mode: LaunchMode.inAppWebView,
                  webViewConfiguration: const WebViewConfiguration(
                      headers: <String, String>{'my_header_key': 'my_header_value'}),
                );
              }, child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Terms Of Use', style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              )),
            ],
          )

        ],
      ),

    );
  }
}
