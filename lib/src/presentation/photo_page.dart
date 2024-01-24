import 'package:flutter/material.dart';

import '../models/photo.dart';
import 'containers/selected_photo_container.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectedPhotoContainer(
      builder: (BuildContext context, Photo photo) {
        return Scaffold(
          appBar: AppBar(
            title: Text(photo.user.name),
          ),
          body: Column(
            children: <Widget>[
              Center(
                child: SizedBox(
                  height: 300,
                  child: Image.network(
                    photo.urls.regular,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                '${photo.likes}',
                style: const TextStyle(
                  color: Colors.amber,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(photo.description),
            ],
          ),
        );
      },
    );
  }
}
