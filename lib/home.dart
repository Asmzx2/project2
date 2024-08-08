import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => hamePage();
}

class hamePage extends State<home> {
  int count = 0;
  Counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 93, 143, 95),
          centerTitle: true,
          title: Text(
              ' ﴾ وَاذْكُرُوا اللَّهَ كَثِيرًا لَعَلَّكُمْ تُفْلِحُونَ ﴿',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        body: Column(
       //   mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(),
            Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.50,
                  height: MediaQuery.of(context).size.height / 1.50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 93, 143, 95),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 8),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Transform.translate(
                  offset: Offset(1, 9),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 8),
                            blurRadius: 30,
                            color: Colors.black),
                      ],
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                            onPressed: () =>Counter(),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                              style: ElevatedButton.styleFrom(maximumSize: Size(80, 80)),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                            onPressed: () => reset(),
                            child: Icon(Icons.wifi_protected_setup),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black ,),
                            ),

                              ],

                            )
                      ],
                    ),
                  ),
                
                )
              ],
            )
          ],
        ));
  }
}
