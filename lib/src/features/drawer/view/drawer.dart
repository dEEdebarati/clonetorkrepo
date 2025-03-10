import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';


class NavBar extends StatefulWidget {
  final String userName, roll;
  const NavBar({required this.userName, required this.roll, super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            icon: const Icon(Icons.info),
            title: const Text('Log Out'),
            content: const Text('Are you sure you want to Log out?'),

            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoButton(
                      onPressed: () async {

                      },
                      child: const Text(
                        'Yes',
                        style: TextStyle(color: Colors.red),
                      )),
                  CupertinoButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('No')),
                ],
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Center(
                      child: Column(
                        children: [
                          const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 42,
                              backgroundImage:
                              AssetImage(AppImages.google)),
                          const Gap(5),
                          Text(widget.userName,
                              style: Theme.of(context).textTheme.bodyLarge),
                          const Gap(5),
                          Text(widget.roll)
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: InkWell(
                    onTap: _showDialog,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                spreadRadius: 4,
                                offset: Offset(5, 5))
                          ]),
                      child: const Row(
                        children: [
                          SizedBox(width: 15),
                          Icon(Icons.exit_to_app),
                          SizedBox(width: 30),
                          Text(
                            'Log out',
                            style:
                            TextStyle(fontSize: 16, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
