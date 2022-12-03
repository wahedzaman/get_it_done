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
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        borderRadius: radius20,
        color: Colors.white,
      ),
      child: Slidable(
        startActionPane: ActionPane(
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(20),
              ),
              onPressed: (((context) {})),
              backgroundColor: const Color.fromARGB(255, 148, 66, 7),
              foregroundColor: Colors.white,
              icon: Icons.archive_rounded,
              label: 'Archive',
            ),
          ],
        ),
        endActionPane: ActionPane(
          openThreshold: 0.5,
          closeThreshold: 0.9,
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(20),
              ),
              onPressed: (((context) {})),
              backgroundColor: const Color.fromARGB(255, 195, 26, 26),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: CheckboxListTile(
          //[?]How can I reduce spacing between checkbox and tile?
          //[?]How to increase the checkbox size?
          //[!]There have an error in checkbox.
          checkboxShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: padding16, //
          activeColor: getBrandColor(),
          controlAffinity: ListTileControlAffinity.leading,
          value: taskCompleted,

          title: ExpansionTile(
            iconColor: getBrandColor(),
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
            children: [
              const Divider(
                indent: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 5, bottom: 5),
                child: Text(
                  faker.lorem.sentences(4).toString(),
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
