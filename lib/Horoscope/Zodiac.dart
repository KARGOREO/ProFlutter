import 'package:flutter/material.dart';

class Zodiac extends StatefulWidget {
  const Zodiac({Key? key}) : super(key: key);

  @override
  State<Zodiac> createState() => _ZodiacState();
}

class _ZodiacState extends State<Zodiac> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 3,
            decoration: BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage('images/top_header.png'))
                ),
          ),
          // SafeArea(
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Column(
          //       children: <Widget>[
          //         Container(
          //           child: Row(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: <Widget>[
          //               SizedBox(width: 16),
          //               Column(
          //                 // mainAxisAlignment: MainAxisAlignment.center,
          //                 // crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: <Widget>[
          //                   Text(
          //                     'พยากรณ์ 12 ราศี',
          //                     style: TextStyle(
          //                       color: Colors.white,
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //         GridView.count(
          //           mainAxisSpacing: 10,
          //           crossAxisCount: 10,
          //           primary: false,
          //           children: <Widget>[Card()],
          //         )
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
