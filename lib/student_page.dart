import 'package:database_example/new_student_form.dart';
import 'package:flutter/material.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hive Tutorial'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: _buildListView()),
            NewStudentForm(),
          ],
        ));
  }

  ListView _buildListView() {
    return ListView(
      children: const <Widget>[
        ListTile(
          title: Text('Name'),
          subtitle: Text('Age'),
        )
      ],
    );
  }
}
