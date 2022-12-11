import 'package:flutter/material.dart';

class ImagePicker extends StatefulWidget {
  ImagePicker({Key? key}) : super(key: key);

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          //For the tesing I'm using this widgets..(gestureDetector)...
          child: GestureDetector(
            onTap: () {
              // print('Photo');
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  //! Copy this image url from internet..
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1664574652984-5b5f769bef07?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
                  ),
                ),
              ),
            ),
          ),
        ),
        //
        IconButton(
            onPressed: () {
              print('Done');
            },
            icon: const Icon(
              Icons.add_a_photo_outlined,
              size: 40,
              color: Colors.black,
            )),
      ],
    );
  }
}
