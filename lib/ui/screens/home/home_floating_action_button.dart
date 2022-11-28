import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:flutter/material.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: getBrandColor(),
      elevation: 0,
      foregroundColor: Colors.black,
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: getBackgroundColor(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return DraggableScrollableSheet(
              expand: false,
              initialChildSize: 0.4,
              // maxChildSize: 1,
              // minChildSize: 0.1,
              builder: (context, scrollController) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 0),
                  child: Column(
                    children: [
                      const Divider(
                        height: 10,
                        color: Color.fromARGB(255, 180, 222, 182),
                        thickness: 3,
                        indent: 160,
                        endIndent: 160,
                      ),
                      gap18,
                      BottomSheetListContainer(
                          icon: Icons.edit_rounded,
                          text: 'Add New Task',
                          onTap: () {}),
                      BottomSheetListContainer(
                          icon: Icons.playlist_add_rounded,
                          text: 'Add New Category',
                          onTap: () {}),
                      BottomSheetListContainer(
                          icon: Icons.person_pin_circle_rounded,
                          text: 'Add New Circle',
                          onTap: () {}),
                      BottomSheetListContainer(
                          icon: Icons.tag_rounded,
                          text: 'Add New Tag',
                          onTap: () {}),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
      child: const Icon(Icons.add),
    );
  }
}

//Container list
class BottomSheetListContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  const BottomSheetListContainer({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black, size: 30),
        title: Text(text,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600)),
        onTap: onTap,
      ),
    );
  }
}
