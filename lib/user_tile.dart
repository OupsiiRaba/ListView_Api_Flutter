import 'package:flutter/material.dart';

import 'package:tp5/user_details_page.dart';

import 'data_model.dart';

class UserTile extends StatelessWidget {
  final User user;

  UserTile({required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            leading:
              CircleAvatar(
                backgroundImage: NetworkImage(user.picture),
              ),

            title: Text('${user.name}'),
            subtitle: Text(user.phone),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserDetailsPage(user: user)));
            },
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
