import 'package:flutter/material.dart';

class RightSide extends StatefulWidget {
  RightSide({Key? key}) : super(key: key);

  @override
  State<RightSide> createState() => _RightSideState();
}

class _RightSideState extends State<RightSide> {
  Color errorColor = Colors.red;
  String textFieldValue = '';
  bool onPress = false;
  bool changeAccount = false;

  TextEditingController myController = TextEditingController();
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

  Column personalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        //Email
        const Text(
          'Email ID',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        const SizedBox(height: 5),
        SafeArea(
          child: Container(
            height: textFieldValue == '' ? 40 : 62,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  textFieldValue == '' ? null : Icons.error,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(),
                errorText: textFieldValue == '' ? null : textFieldValue,
              ),
              controller: myController,
              onChanged: (value) {
                setState(
                  () {
                    value == myController;
                    if (!value.contains('@') || !value.contains('.')) {
                      textFieldValue = 'Pleasr enter your email address';
                    } else
                      textFieldValue = '';
                  },
                );
              },
            ),
          ),
        ),
        // Password
        const SizedBox(height: 10),
        const Text(
          'Create New Password',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        const SizedBox(height: 10),
        Container(
          height: 40,
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: onPress ? false : true,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    onPress = !onPress;
                  });
                },
                icon: Icon(onPress ? Icons.visibility : Icons.visibility_off),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
        // phone number
        const SizedBox(height: 10),
        const Text(
          'Phone Number (Optional)',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        const SizedBox(height: 5),
        Container(
          height: 40,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixText: '+44 | ',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Credit Card Info',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        const SizedBox(height: 10),
        Container(
          height: 40,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 13, 108, 187),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 35,
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'SUBMIT',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Widget accountDetails() {
    return Container(
      height: 600,
    );
  }
}
