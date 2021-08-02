import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page_3.dart';

class PageDua extends StatelessWidget {
  static const routeName = '/page_dua';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        //leading: Container(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      "<<back",
                      style: TextStyle(fontSize: 30),
                    )),
                TextButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed('/page_tiga'),
                    child: Text(
                      "next>>",
                      style: TextStyle(fontSize: 30),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
