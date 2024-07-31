import 'package:flutter/material.dart';

import 'left_side/left_side.dart';
import 'right_side/right_side.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 100),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Color.fromARGB(255, 13, 108, 187),
                child: LeftSide(),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: RightSide(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
