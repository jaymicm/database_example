import 'package:database_example/models/Student.dart';
import 'package:flutter/material.dart';

class NewStudentForm extends StatefulWidget {
  const NewStudentForm({Key? key}) : super(key: key);

  @override
  State<NewStudentForm> createState() => _NewStudentFormState();
}

class _NewStudentFormState extends State<NewStudentForm> {
  final _formKey = GlobalKey<FormState>();

  late String _name;
  late String _age;
  void addStudent(Student student) {
    print('Name: ${student.StudentName}, Age: ${student.Age}');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Name'),
                  onSaved: (value) => _name = value!,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                  onSaved: (value) => _age = value!,
                ),
              ),
            ],
          ),
          RaisedButton(
            child: const Text('Add New Student'),
            onPressed: () {
              _formKey.currentState?.save();
              final newStudent = Student(_name, int.parse(_age));
              addStudent(newStudent);
            },
          ),
        ],
      ),
    );
  }
}
