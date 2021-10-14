// import 'package:flutter/material.dart';
// import 'package:paws_app/screens.dart/home_screen.dart';
// import 'package:paws_app/utilities/location.dart';

// class LoadingScreen extends StatefulWidget {
//   const LoadingScreen({Key? key}) : super(key: key);

//   @override
//   _LoadingScreenState createState() => _LoadingScreenState();
// }

// class _LoadingScreenState extends State<LoadingScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _navigatetohome();
//   }

//   _navigatetohome() async {
//     await Future.delayed(Duration(milliseconds: 2500), () {});
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(
//         builder: (context) => HomePage(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image(
//               image: AssetImage('images/paws@3x 1.png'),
//             ),
//             Image(
//               image: AssetImage('images/Paws.png'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
