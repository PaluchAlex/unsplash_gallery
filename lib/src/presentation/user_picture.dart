import 'package:flutter/material.dart';

import '../models/app_user.dart';
import 'containers/app_user_container.dart';

class UserPicture extends StatelessWidget {
  const UserPicture({super.key, this.radius = 24});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return AppUserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return CircleAvatar(
          radius: radius,
          backgroundColor: Colors.amber,
          backgroundImage: user.pictureUrl != null ? NetworkImage(user.pictureUrl!) : null,
          child: user.pictureUrl != null
              ? null
              : Text(
                  user.displayName[0].toUpperCase(),
                  style: TextStyle(
                    fontSize: radius * 0.75,
                  ),
                ),
        );
      },
    );
  }
}
