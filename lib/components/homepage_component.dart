import 'package:cipherschool/screens/coursepage.dart';
import 'package:flutter/material.dart';
Container category_container(BuildContext context, String bgimg, String text1,
    String text2, String btntxt, IconData conticon) {
  return Container(
    // margin: EdgeInsets.all(10),
    margin: EdgeInsets.fromLTRB(0, 10, 40, 10),
    height: MediaQuery.of(context).size.height * 0.35,
    width: MediaQuery.of(context).size.width * 0.77,
    // color: Colors.cyan,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(bgimg), fit: BoxFit.cover),
        // color: kBackgroundColor,

        borderRadius: BorderRadius.all(Radius.circular(50))),
    child: Column(
      children: [
        SizedBox(
          height: 60,
        ),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.70,
          child: Text(
            text1,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.70,
          child: Text(
            text2,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        /* give space */
        Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.49,
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const coursepage()));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(
                              color: Color.fromARGB(255, 12, 1, 0))))),
              child: Row(
                children: [
                  Text(
                    btntxt,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Icon(
                    conticon,
                    size: 30,
                  )
                ],
              )),
        )
      ],
    ),
  );
}
