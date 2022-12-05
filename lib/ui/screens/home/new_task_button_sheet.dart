import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/screens/home/home_floating_action_button.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';
import 'package:flutter/material.dart';

class NewTaskButtonSheet extends StatefulWidget {
  const NewTaskButtonSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<NewTaskButtonSheet> createState() => _NewTaskButtonSheetState();
}

class _NewTaskButtonSheetState extends State<NewTaskButtonSheet> {
  //Heading Method of Add New Task
  _addHeadingText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }

  final _categoryList = [
    "Category 01",
    "Category 02",
    "Category 03",
    "Category 04",
    "Category 05",
    "Category 06",
    "Category 07",
    "Category 08",
  ];
  @override
  Widget build(BuildContext context) {
    return BottomSheetListContainer(
      icon: Icons.edit_rounded,
      text: 'Add New Task',
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: getBackgroundColor(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gap14,
                  _addHeadingText('Title'),

                  const AppEditText(
                    hint: 'Your title',
                  ),

                  gap24,
                  _addHeadingText('Descriptions'),
                  const AppEditText(
                    height: 140,
                    maxLines: 8,
                    hint: 'Detail descriptions',
                  ),
                  gap24,
                  _addHeadingText('Category'),

                  //Category List
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: DropdownButtonFormField(
                        icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                        iconSize: 30,
                        iconEnabledColor: getHabibColor,
                        dropdownColor: Colors.green.shade50,
                        hint: Text(
                          'Select your category:',
                          style: TextStyle(color: getBrandColor()),
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        items: _categoryList.map((e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                              style: const TextStyle(
                                color: getHabibColor,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {}),
                  ),
                  gap24,
                  _addHeadingText('Tag'),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: DropdownButtonFormField(
                        hint: Text(
                          'Select your tag:',
                          style: TextStyle(color: getBrandColor()),
                        ),
                        icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                        iconSize: 30,
                        iconEnabledColor: getHabibColor,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                        ),
                        items: _categoryList
                            .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                    color: getHabibColor,
                                  ),
                                )))
                            .toList(),
                        onChanged: (val) {}),
                  ),
                  gap48,
                  gap48,
                  AppButton(
                      //[add] Color change into brandColor.
                      onTap: () {},
                      title: 'Save'),
                  gap48,
                  gap48,
                  gap48,
                ],
              ),
            );
          },
        );
      },
    );
  }
}
