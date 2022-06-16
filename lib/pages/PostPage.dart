import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_request/models/PostModel.dart';
import 'package:http_request/pages/GetPage.dart';

class PostPage extends StatefulWidget {
  const PostPage({ Key? key }) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  HttpStateful dataResponse = HttpStateful();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text((dataResponse.id == null)
            ? "ID: No ID"
            : "ID: ${dataResponse.id}"),
            Text((dataResponse.name == null)
            ? "Name: No Name"
            : "Name: ${dataResponse.name}"),
            Text((dataResponse.job == null)
            ? "Job: No Data"
            : "Job: ${dataResponse.job}"),
            Text((dataResponse.createdAt == null)
            ? "Created At: No Data"
            : "Created At: ${dataResponse.createdAt}"),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                HttpStateful.connectAPI("Ivan Danis", 'Front-End Mobile').then(
                  (value){
                    setState(() {
                      dataResponse=value;
                    });
                  });
              }, 
              child: Text('Post Data'))

          ],
        ),
      ),
    );
  }
}