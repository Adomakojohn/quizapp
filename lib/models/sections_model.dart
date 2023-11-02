import 'package:flutter/material.dart';

class SectionsModel extends StatefulWidget {
  final String title;
  final String subtitle;
  const SectionsModel({super.key , required this.title , required this.subtitle});

  @override
  State<SectionsModel> createState() => _SectionsModelState();
}

class _SectionsModelState extends State<SectionsModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        height: 90,
        decoration: BoxDecoration(
          boxShadow:  [
            BoxShadow( offset: const Offset(1.0, 3.0) , blurRadius: 4 ,spreadRadius: 1 , color: Colors.grey.shade700),
          ],
          color: Colors.blue.shade400,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: ListTile(
          title: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          subtitle: Text(
              widget.subtitle,
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          subtitleTextStyle:const TextStyle(fontSize: 18 ,),
        ),
      ),
    );
  }
}
