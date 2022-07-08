import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Second_Page extends StatefulWidget {
  const Second_Page({Key? key}) : super(key: key);

  @override
  State<Second_Page> createState() => _Second_PageState();
}

class _Second_PageState extends State<Second_Page> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    String ott = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: ott,
              onProgress: (a) {
                if (a == 100) {
                  setState(() {
                    isVisible = false;
                  });
                }
              },
            ),
            Center(
              child: Visibility(
                visible: isVisible,
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
