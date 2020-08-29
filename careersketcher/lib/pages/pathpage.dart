import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class PathWay extends StatefulWidget {
  @override
  _PathWayState createState() => _PathWayState();
}

class _PathWayState extends State<PathWay> {
  List<Paths> paths = [
    Paths(
        title: 'After SEE',
        descrip:
            'Join a bridge course institute to prepare for +2 entrance exaxms'),
    Paths(title: 'J0in +2', descrip: 'Join +2 in locally reputed college'),
    Paths(title: 'After +2', descrip: 'Join entrence preparation classes'),
    Paths(
        title: 'after preparation classes',
        descrip:
            'Join locally reputed colleges where desired course iin availavble'),
    Paths(
        title: 'After bachelor',
        descrip:
            'you can get the job on computer enginnering or u can go for further study too'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 25,
        ),
        itemCount: paths.length,
        itemBuilder: (context, index) {
          return TimelineTile(
            topLineStyle: LineStyle(
              color: Colors.blue,
              width: 3,
            ),
            indicatorStyle: IndicatorStyle(color: Colors.blue[500], width: 30),
            alignment: TimelineAlign.left,
            rightChild: GestureDetector(
              onTap: () {
                print(paths.elementAt(index).title);
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                width: MediaQuery.of(context).size.width * .9,
                constraints:
                    const BoxConstraints(minHeight: 120, minWidth: 200),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue[100].withOpacity(0.4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        paths.elementAt(index).title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(paths.elementAt(index).descrip),
                    )
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

class Paths {
  String title;
  String descrip;
  Paths({this.title, this.descrip});
}
