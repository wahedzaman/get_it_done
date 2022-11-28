import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/screens/notes/note_check_list_tile.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({
    super.key,
  });

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  //list of Note task
  List taskList = [
    [faker.address.city(), true],
    [faker.job.title(), false],
    [faker.job.title(), false],
    [faker.job.title(), false],
    [faker.job.title(), false],
    [faker.job.title(), false],
    [faker.address.country(), false],
  ];

  //CheckBoxChanged was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      taskList[index][1] = !taskList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'TODAY',
          style: TextStyle(letterSpacing: 5),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
        child: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (BuildContext context, int index) {
            return NoteCheckboxListTile(
              taskName: taskList[index][0],
              taskCompleted: taskList[index][1],
              onChanged: (value) {
                return checkBoxChanged(value, index);
              },
            );
          },
        ),
      ),
    );
  }
}
