import 'package:flutter/material.dart';

class Horoscope2 extends StatelessWidget {
  const Horoscope2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Colors.amber[50],
        title: Text(
          "ดูดวงรายวัน",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Align(
                      alignment: Alignment.topRight,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                ),
                Column(
                  children: [
                    Image.asset(
                      'images/animals/dog (1).png',
                      height: 150,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: ElevatedButton(
                          child: Text(
                            'วันอาทิตย์',
                            style: TextStyle(
                              fontFamily: 'Biscuit',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            onPrimary: Colors.white,
                            shadowColor: Colors.grey,
                            shape: const BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            elevation: 5,
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(
                                  "คนที่เกิดวันอาทิตย์",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                content: Text(
                                  'การงาน - สร้างผลงานได้ดี\n'
                                  'การเงิน - จะได้โชคใหญ่\n'
                                  'ความรัก - พบรักแท้ฉับพลัน\n\n'
                                  'เคล็ดลับเสริมดวงประจำวัน\n\n'
                                  'กราบไหว้บูชาพระอุปคุต จะทำให้เกิดความเป็นโชคดี\n'
                                  'อัญมณีมงคล - ทัวร์มาลีน\n'
                                  'สีมงคล - สีครีม\n'
                                  'เลขนำโชค - 4, 5, 7\n',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                actions: [
                                  TextButton(
                                    child: Text('CANCEL'),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: ElevatedButton(
                        child: Text(
                          'วันจันทร์',
                          style: TextStyle(
                            fontFamily: 'Biscuit',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow.shade700,
                          onPrimary: Colors.white,
                          shadowColor: Colors.grey,
                          shape: const BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          elevation: 5,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(
                                "คนที่เกิดวันจันทร์",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              content: Text(
                                'การงาน - เกิดการชะลอตัวในการทำธุรกิจ\n'
                                'การเงิน - ใช้เงินมากเป็นพิเศษ\n'
                                'ความรัก - เกิดความตึงเครียด\n\n'
                                'เคล็ดลับเสริมดวงประจำวัน\n\n'
                                'ทำบุญเพื่อร่วมบริจาคในการซื้อที่ดินให้กับวัด\n'
                                'อัญมณีมงคล - ฟลูออไรต์\n'
                                'สีมงคล - สีเขียว\n'
                                'เลขนำโชค - 0, 4, 6, 8\n',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              actions: [
                                TextButton(
                                  child: Text('CANCEL'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Center(
                  child: ElevatedButton(
                    child: Text(
                      'วันอังคาร',
                      style: TextStyle(
                        fontFamily: 'Biscuit',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      onPrimary: Colors.white,
                      shadowColor: Colors.grey,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      elevation: 5,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            "คนที่เกิดวันอังตาร",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: Text(
                            'การงาน - ใช้ความขยันในการสร้างผลงานได้ยอดเยี่ยม\n'
                            'การเงิน - มีรายจ่ายมากเป็นพิเศษ\n'
                            'ความรัก - พบเรื่องเลิกราหย่าร้าง\n\n'
                            'เคล็ดลับเสริมดวงประจำวัน\n\n'
                            'กราบไหว้บูชาพระปางไสยาสน์\n'
                            'อัญมณีมงคล - ฮอคอาย\n'
                            'สีมงคล - สีเทา\n'
                            'เลขนำโชค - 0, 2, 4, 5, 8\n',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          actions: [
                            TextButton(
                              child: Text('CANCEL'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: Text(
                      'วันพุธ',
                      style: TextStyle(
                        fontFamily: 'Biscuit',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      shadowColor: Colors.grey,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      elevation: 5,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            "คนที่เกิดวันพุธ",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: Text(
                            'การงาน - ทำธุรกิจลงทุนน้อยแต่ได้กำไรงาม\n'
                            'การเงิน - มีโชคจะได้เงิน\n'
                            'ความรัก - ได้พบคนลักษณะท้วม\n\n'
                            'เคล็ดลับเสริมดวงประจำวัน\n\n'
                            'กราบไหว้บูชาพระปางไสยาสน์\n'
                            'อัญมณีมงคล - อเมทริน\n'
                            'สีมงคล - เหลือง\n'
                            'เลขนำโชค - 1, 3, 4, 6, 8, 9\n',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          actions: [
                            TextButton(
                              child: Text('CANCEL'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: Text(
                      'วันพฤหัสบดี',
                      style: TextStyle(
                        fontFamily: 'Biscuit',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[700],
                      onPrimary: Colors.white,
                      shadowColor: Colors.grey,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      elevation: 5,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            "คนที่เกิดวันพฤหัสบดี",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: Text(
                            'การงาน - เร่งรีบสร้างธุรกิจแบบเร่งด่วน\n'
                            'การเงิน - มีโชคแบบฉับพลัน\n'
                            'ความรัก - ได้พบคนมีความรู้ปัญญาดี\n\n'
                            'เคล็ดลับเสริมดวงประจำวัน\n\n'
                            'กราบไหว้บูชาพระอุปคุต จะทำให้เกิดความเป็นโชคดี\n'
                            'อัญมณีมงคล - โรสควอตซ์\n'
                            'สีมงคล - สีชมพู\n'
                            'เลขนำโชค - 2, 3, 5, 8\n',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          actions: [
                            TextButton(
                              child: Text('CANCEL'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: Text(
                      'วันศุกร์',
                      style: TextStyle(
                        fontFamily: 'Biscuit',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent.shade400,
                      onPrimary: Colors.white,
                      shadowColor: Colors.grey,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      elevation: 5,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            "คนที่เกิดวันศุกร์",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: Text(
                            'การงาน - ประสบความสำเร็จในการสร้างธุรกิจใหม่\n'
                            'การเงิน - ใช้เงินมากเป็นพิเศษในการจ่าย\n'
                            'ความรัก - พบความสัมพันธ์ที่ตึงเครียด\n\n'
                            'เคล็ดลับเสริมดวงประจำวัน\n\n'
                            'ทำบุญเติมน้ำมันตะเกียง\n'
                            'อัญมณีมงคล - โอปอล\n'
                            'สีมงคล - สีส้ม\n'
                            'เลขนำโชค - 3, 4, 6, 8\n',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          actions: [
                            TextButton(
                              child: Text('CANCEL'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: Text(
                      'วันเสาร์',
                      style: TextStyle(
                        fontFamily: 'Biscuit',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple.shade600,
                      onPrimary: Colors.white,
                      shadowColor: Colors.grey,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      elevation: 5,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            "คนที่เกิดวันเสาร์",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: Text(
                            'การงาน - พบความเจริญรุ่งเรืองอาจได้เลื่อนขั้นเลื่อนตำแหน่ง\n'
                            'การเงิน - มีการชดใช้ภาระหนี้สินเก่า\n'
                            'ความรัก - ปฏิเสธเรื่องรักทุกกรณี\n\n'
                            'เคล็ดลับเสริมดวงประจำวัน\n\n'
                            'แต่งตัวด้วยเสื้อผ้าอาภรณ์ที่ทำให้ดูดี\n'
                            'อัญมณีมงคล - พลอยสตาร์สีน้ำเงิน\n'
                            'สีมงคล - สีน้ำเงิน\n'
                            'เลขนำโชค - 1, 2, 3, 5, 8, 9\n',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          actions: [
                            TextButton(
                              child: Text('CANCEL'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
