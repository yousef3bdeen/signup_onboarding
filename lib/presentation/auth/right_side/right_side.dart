import 'package:flutter/material.dart';
import 'package:signup_onboarding/presentation/auth/widget/accountDetails.dart';
import 'package:signup_onboarding/presentation/auth/widget/personalInfo.dart';

class RightSide extends StatefulWidget {
  @override
  State<RightSide> createState() => _RightSideState();
}

class _RightSideState extends State<RightSide> {
  bool changeAccount = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 150),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Sign up',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      changeAccount = true;
                    });
                  },
                  child: Text(
                    'Personal Info',
                    style: TextStyle(
                        color: changeAccount == true
                            ? Color.fromARGB(255, 13, 108, 187)
                            : Colors.grey,
                        fontWeight:
                            changeAccount == true ? FontWeight.bold : null),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      changeAccount = false;
                    });
                  },
                  child: Text(
                    'Account Details',
                    style: TextStyle(
                        color: changeAccount == false
                            ? Color.fromARGB(255, 13, 108, 187)
                            : Colors.grey,
                        fontWeight:
                            changeAccount == false ? FontWeight.bold : null),
                  ),
                ),
              ],
            ),
            changeAccount == true ? personalInfo() : accountDetails(),
          ],
        ),
      ),
    );
  }
}
