

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: second(),
  ));
}
// class first extends StatelessWidget {
//   const first({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double height=MediaQuery.of(context).size.height;
//     double width=MediaQuery.of(context).size.width;
//     double appbarsize=kToolbarHeight;
//     double statusbarsize=MediaQuery.of(context).padding.top;
//     double bttombarsize=MediaQuery.of(context).padding.bottom;
//     double bodyheight=height-appbarsize-statusbarsize-bttombarsize;
//     // double height=MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Container(
//             height: bodyheight,
//             width: width,
//             color: Colors.cyan,
//           )
//         ],
//       ),
//     );
//   }
// }
class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation){
        if(orientation == Orientation.landscape){
          return Scaffold(
          appBar: AppBar(),
          body: Container(
          height: 300,
          width: 300,
          color: Colors.deepPurple,
        ),
        );
        }
        else{
          return Scaffold(
          appBar: AppBar(),
          body: Container(
        height: 100,
        width: 100,
        color: Colors.cyan,
        ),
          );
        }
      },
    );
  }
}
