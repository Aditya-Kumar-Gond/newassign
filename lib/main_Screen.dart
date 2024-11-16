import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newassign/api_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                child: Image.asset('images/home-header.png'),
              ),
              SizedBox(
                child: Image.asset('images/cloud-header.png'),
              )
            ],
            alignment: Alignment.bottomCenter,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Material(
              child: Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage("images/img.png"),
                          fit: BoxFit.fill,
                        )

                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20,bottom: 10),
                                child: Text(
                                  "Stories that teach",
                                  style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context).textTheme.displayLarge,
                                      fontSize: 20,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 50),
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                          apiSrceen()
                                        ));
                                      },
                                      child: SvgPicture.asset('images/ic_play.svg')),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          DotsIndicator(dotsCount: 5,position: 1,),
          SizedBox( height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(radius: 30,child: Icon(Icons.person),),
                Text("    Everyday Stories",
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 20,
                      color: Colors.black
                  ),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [Imagecard(imageAdd: "images/img.png"),
                Imagecard(imageAdd: "images/img.png"),
                Imagecard(imageAdd: "images/img.png"),]
            ),
          ),
        ],
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class Imagecard extends StatelessWidget {
  String? imageAdd;
  Imagecard({required this.imageAdd});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageAdd!),fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                height: 20,
                width: 10,
                child: SvgPicture.asset('images/ic_play.svg'),
              ),
            )
          ),
          //SizedBox(child: Image.asset(imageAdd!),),
          Text("Text 1",
          style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 20,
              color: Colors.black
          ),)
        ],
      ),
    );
  }
}

