import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Title'),
            subtitle: Text('Consectetur commodo eu do enim elit laborum aute esse velit sunt in ullamco sint. Commodo sint do quis labore excepteur. Duis anim ut incididunt laborum dolore minim laboris nulla dolore aute qui cillum.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: null, 
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: null, 
                  child: const Text('Ok')
                )               
              ],
            ),
          )
        ],
      ),
    );
  }
}