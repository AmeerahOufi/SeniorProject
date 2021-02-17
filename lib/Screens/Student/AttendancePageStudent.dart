import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';
import 'package:tester/Screens/Student/homePageStudent.dart';
import 'package:tester/Screens/style.dart';

class AttendancePageStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: (Scaffold(
          backgroundColor: Colors.white,

          appBar: AppBar(
            backgroundColor: Color(0xFFD9D9D9),
            title: Text(
              "Attendance report",
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF525151),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                runApp(HomePageStudent());
              },
              color: Color(0xFF525151),
              iconSize: 20,
              padding: EdgeInsets.only(left: 20),
            ),
          ),

          //body
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Align(alignment: Alignment.center),

            //Table container
            Container(
                //margin: EdgeInsets.fromLTRB(20, 100, 60, 0),
                child: Center(
                    child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Course Name ',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Absent',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Delayed',
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('OMR 312')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('OMR 511')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('OMR 611')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
              ],
            ))),
            //Back button
            SubmitButtons(
              text: "Download",
              onpressed: () {},
            )
          ]),
        )));
  }
}
