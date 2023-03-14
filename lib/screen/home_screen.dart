import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;


  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('FA_Retire'),
        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {
            if (controller != null) {
              controller!.loadUrl('https://blog.naver.com/dearjune7');
            }
          },
          icon: Icon(
            Icons.home,
            ),
          ),
        ],
      ),
      body: WebView(
        //웹뷰 생성 함수
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: 'https://blog.naver.com/dearjune7',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
