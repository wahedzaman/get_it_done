import 'package:GID/core/ui_color_constant.dart';
import 'package:GID/core/ui_constants.dart';
import 'package:GID/core/ui_utils.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class CircleScreen extends StatefulWidget {
  const CircleScreen({super.key});

  @override
  State<CircleScreen> createState() => _CircleScreenState();
}

class _CircleScreenState extends State<CircleScreen> {
  List memberList = [
    // May I take loop for all of this same code. But how can I do.
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
    [faker.address.person.name(), faker.internet.email()],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'CIRCLE',
          style: TextStyle(letterSpacing: 5),
        ),
      ),
      body: ListView.builder(
        itemCount: memberList.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              //  gap18,
              TextButton(
                onPressed: () {},
                child: ListTile(
                  // minLeadingWidth: 22,
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: getBrandColor(),
                    child: Text(
                      memberList[index]
                          .toString()
                          .substring(1, 3)
                          .toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Color.fromARGB(255, 7, 120, 11),
                  ),
                  title: Text(memberList[index][0],
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text(
                    memberList[index][1],
                    style: TextStyle(color: hexToColor(greyDark)),
                  ),
                ),
              ),
              Divider(
                color: getBrandColor(),
                indent: 92.0,
                thickness: 0.8,
              ),
            ],
          );
        }),
      ),
    );
  }
}
