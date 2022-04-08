// import 'package:flutter/material.dart';



// import 'package:flutter_application_1/api/natwortking/login.dart';
// import 'package:flutter_application_1/main.dart';
// import 'package:form_field_validator/form_field_validator.dart';

// class WriteSQLdata extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return WriteSQLdataState();
//   }
// }

// class WriteSQLdataState extends State<WriteSQLdata> {
//   String name = "";
//   String pass = "";
//   String email = "";
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
     
//         appBar: AppBar(
      

//         ),
//         body: Center(
//           child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "LOGIN",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: size.height * 0.03),
//             /*SvgPicture.asset(
//               "assets/icons/like_icon.svg",
//               height: size.height * 0.35,
//             ),*/
//             SizedBox(height: size.height * 0.03),
//             Padding(
//               padding: const EdgeInsets.all(5.0),
//               child: Container(
//                 child: TextFormField(
//                   onChanged: (value) {
//                     name = value;
//                   },
//                   validator: MultiValidator([
//                     RequiredValidator(errorText: 'กรุณาป้อน ชื่อ ของคุณ'),
//                   ]),
//                   decoration: InputDecoration(
//                       labelText: 'Username',
//                       filled: true,
//                       fillColor: Colors.black12,
//                       border: InputBorder.none),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(5.0),
//               child: Container(
//                 child: TextFormField(
//                   onChanged: (value) {
//                     email = value;
//                   },
//                   validator: MultiValidator([
//                     RequiredValidator(errorText: 'กรุณาป้อน อีเมล ของคุณ'),
//                   ]),
//                   decoration: InputDecoration(
//                       labelText: 'email',
      
//                       fillColor: Colors.black12,
//                       border: InputBorder.none),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(5.0),
//               child: Container(
//                 child: TextFormField(
//                   onChanged: (value) {
//                     pass = value;
//                   },
//                   validator: MultiValidator([
//                     RequiredValidator(errorText: 'กรุณาป้อน รหัสผ่าน ของคุณ'),
//                   ]),
//                   decoration: InputDecoration(
//                       labelText: 'Password',
//                       filled: true,
//                       fillColor: Colors.black12,
//                       border: InputBorder.none),
//                 ),
//               ),
//             ),
//             SizedBox(height: 0.5),
//             Container(
//               width: 100.0,
//               child: ClipRect(
//                 child: FlatButton(
//                   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                
//                   onPressed: () async {
//                     User? u = await User.checkLogin(name, pass);
//                     if (u != null) {
//                       print("GO");
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => MyApp()));
//                     } else if (name == "") {
//                       print("ว่าง");
//                       await showDialog(
//                           context: context,
//                           builder: (BuildContext context) => AlertDialog(
//                                 title: Text(''),
//                                 backgroundColor: Color.fromARGB(255, 214, 78, 19),
//                                 content: Text(
//                                   '  ใส่ Name ',
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 20),
//                                 ),
//                                 actions: <Widget>[
//                                   TextButton(
//                                       child: Text('Close'),
//                                       style: TextButton.styleFrom(
//                                         primary: Colors.white,
//                                         backgroundColor: Colors.blue,
//                                       ),
//                                       onPressed: () {
//                                         Navigator.pop(context);
//                                       }),
//                                 ],
//                               ));
//                     } else if (pass == "") {
//                       print("ว่าง");
//                       await showDialog(
//                           context: context,
//                           builder: (BuildContext context) => AlertDialog(
//                                 title: Text(''),
//                                 backgroundColor: Colors.pink[50],
//                                 content: Text(
//                                   '  ใส่ passwode ',
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 20),
//                                 ),
//                                 actions: <Widget>[
//                                   TextButton(
//                                       child: Text('Close'),
//                                       style: TextButton.styleFrom(
//                                         primary: Colors.white,
//                                         backgroundColor: Colors.blue,
//                                       ),
//                                       onPressed: () {
//                                         Navigator.pop(context);
//                                       }),
//                                 ],
//                               ));
//                     } else {
//                       print("ว่าง");
//                       await showDialog(
//                           context: context,
//                           builder: (BuildContext context) => AlertDialog(
//                                 title: Text(''),
//                                 backgroundColor: Colors.pink[50],
//                                 content: Text(
//                                   '  ยังบ่สมัคร ',
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 20),
//                                 ),
//                                 actions: <Widget>[
//                                   TextButton(
//                                       child: Text('Close'),
//                                       style: TextButton.styleFrom(
//                                         primary: Colors.white,
//                                         backgroundColor: Colors.blue,
//                                       ),
//                                       onPressed: () {
//                                         Navigator.pop(context);
//                                       }),
//                                 ],
//                               ));
//                     }
//                   },
                  
//                   child: Text(
//                     "เข้าสู่ระบบ",
//                     style: TextStyle(color: Color.fromARGB(255, 219, 126, 3)),
//                   ),
//                 ),
//               ),
//             ),
           
//           ],
//         ),
       
//         ),
        
      
//     );
//   }
// }
