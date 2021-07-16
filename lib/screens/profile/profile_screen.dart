import 'package:dicoding_submission_flutter_beginner/constants.dart';
import 'package:dicoding_submission_flutter_beginner/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: MyAppBar(
          title: 'Profile',
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: 2 * aDefaultPadding, bottom: aDefaultPadding),
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://i.imgur.com/05dYROp.jpg'),
                  radius: 85,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 0.5 * aDefaultPadding),
                child: Text(
                  'Adrian Prawira',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 0.5 * aDefaultPadding),
                child: Text(
                  'Android & Flutter Developer',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                'adrianprawira980@gmail.com',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      );
}
