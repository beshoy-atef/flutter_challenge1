import 'package:flutter/material.dart';

// ignore: camel_case_types
class textField_and_button extends StatelessWidget {
  const textField_and_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: const [
                SizedBox(
                  width: 300,
                  child: Material(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(60)),
                    elevation: 4,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50))),
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Colors.grey,
                          ),
                          hintText: 'User Name',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Material(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(60)),
                    elevation: 4,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.grey,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 20,
              left: 280,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  padding: const EdgeInsets.all(22),
                  primary: const Color(0xff1FD5B4),
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
