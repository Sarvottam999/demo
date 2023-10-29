import 'package:flutter/material.dart';
 
 class FontListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> fontFamilies = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? ThemeData.dark().textTheme.subtitle1!.fontFamily!.split(',')
        : ThemeData.light().textTheme.subtitle1!.fontFamily!.split(',');

    return ListView.builder(
      itemCount: fontFamilies.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Font Family: ${fontFamilies[index]}'),
        );
      },
    );
  }
}