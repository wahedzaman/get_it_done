import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NoteCheckboxListTile extends StatelessWidget {
  const NoteCheckboxListTile({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  }) : super(key: key);

  final String taskName;
  final bool taskCompleted;
  final Function(bool? p1)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(bottom: 6, top: 12),
      decoration: BoxDecoration(
        borderRadius: radius20,
        color: Colors.white,
      ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              borderRadius: radius20,
              onPressed: (((context) {})),
              backgroundColor: const Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: CheckboxListTile(
          subtitle: Text(
            faker.lorem.sentences(1).toString(),
          ),
          contentPadding: padding12,
          activeColor: getBrandColor(),
          controlAffinity: ListTileControlAffinity.leading,
          value: taskCompleted,
          title: Text(
            taskName,
            style: TextStyle(
              decoration: taskCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              color: taskCompleted
                  ? const Color.fromARGB(255, 184, 202, 186)
                  : Colors.black,
            ),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
