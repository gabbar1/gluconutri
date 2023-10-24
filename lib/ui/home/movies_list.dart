import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container MyArticles(String imageval, String title, bool selected, Color color){
  return Container(
      width: 140,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(imageval, height: 150, width: 150,  fit: BoxFit.fill,),
            ListTile(
              title: Text(title, style: TextStyle(fontSize: 15, color: Colors.black)),
              selected: selected,
              selectedTileColor: color ,
            )
          ],
        ),
      )
  );
}

