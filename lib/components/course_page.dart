// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

Container course_container(
    BuildContext context,
    String imgpath,
    String crstitle,
    String crsdisc,
    String crshrs,
    String inslogo,
    String insname) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    height: MediaQuery.of(context).size.height * 0.30,
    width: MediaQuery.of(context).size.width * 0.45,
    // color: Colors.purple,
    child: Column(
      children: [
        Image.asset(imgpath),
        Text(crstitle),
        Text(crsdisc),
        Text('Course duration ${crshrs}'),
        const Divider(),
        Row(
          children: [
            SizedBox(
                height: 40,
                width: 50,
                child: Image.asset(inslogo)),
            const SizedBox(
              width: 30,
            ),
            Text(insname)
          ],
        ),
        
      ],
    ),
    
  );
}
