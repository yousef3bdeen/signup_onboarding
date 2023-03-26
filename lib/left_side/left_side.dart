import 'package:flutter/material.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('minetech',style: TextStyle(color: Colors.white,fontSize: 22),),
          const Spacer(),
          Image.asset('assets/images/left.png'),
        const Spacer(),
        ],
      ),
    );
  }
}