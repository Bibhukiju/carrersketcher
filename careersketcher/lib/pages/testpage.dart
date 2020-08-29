import 'package:url_launcher/url_launcher.dart';

import '../models/blogodel.dart';
import 'package:flutter/material.dart';

List<Blog> blog = [
  Blog(
    image: 'https://i.ytimg.com/vi/vXIr9PsRJL8/hqdefault.jpg',
    title: 'Career in IT ',
    url: 'https://www.ittrainingnepal.com/it-careers/careers-in-it/',
  ),
  Blog(
      image:
          'https://image.shutterstock.com/image-photo/dentist-patient-office-260nw-1052270132.jpg',
      title: 'Career as Dentist',
      url: 'https://collegegrad.com/careers/dentists'),
  Blog(
      image:
          'https://upload.wikimedia.org/wikipedia/commons/f/f6/Civil_Engineering_Students.jpg',
      title: 'Reasons to be and civil enginner',
      url: 'https://campus.tekla.com/4-reasons-become-civil-engineer'),
];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _launchURL(String murl) async {
    launch(murl);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: blog.length,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      blog.elementAt(index).title,
                      style: TextStyle(fontSize: 25),
                    ),
                    Expanded(
                        child: Image.asset(
                      'assets/images/${index + 1}.jpeg',
                      fit: BoxFit.contain,
                    )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
