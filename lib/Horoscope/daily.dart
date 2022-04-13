import 'package:flutter/material.dart';

class Horoscope2 extends StatelessWidget {
  const Horoscope2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Colors.blue[100],
        title: Text(
          "ดูดวงรายวัน",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 500,
            decoration: BoxDecoration(color: Colors.blue[100]),
          ),
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Center(
                child: ElevatedButton(
                  child: Text(
                    'วันอาทิตย์',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
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
                          'การงาน     สร้างผลงานได้ดี  ',
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
                    'วันจันทร์',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
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
                          'การงาน       ',
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
                    'วันอังคาร',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
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
                          'การงาน      ',
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
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
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
                          'การงาน       ',
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
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
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
                          'การงาน       ',
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
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
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
                          'การงาน       ',
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
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
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
                          'การงาน       ',
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
        ],
      ),
    );
  }
}
