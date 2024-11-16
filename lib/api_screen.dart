import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class apiSrceen extends StatefulWidget {
  const apiSrceen({super.key});

  @override
  State<apiSrceen> createState() => _apiSrceenState();
}

class _apiSrceenState extends State<apiSrceen> {
  bool isLoaded = false;

  void fetchData() async{

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue
                    ),
                    padding: EdgeInsets.all(15),
                    height: 50,
                    //   color: Colors.grey,
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "search people....",
                          hintStyle: TextStyle(color: Colors.white)
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Icon(Icons.search,color: Colors.blueGrey,size: 40,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
