import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_drop_down, color: Colors.blue, size: 30), // The title text which will be shown on the action bar
          title: Center(
            child: Text(
              "Products  ",
              style: TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.white,
            )
          ],
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 3,
                  ),
                  child: ListTile(
                    leading: Image.network("https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//97/MTA-10658544/no_brand_sepatu_sneaker_pria_import_-_air_venron_truedoo_cassual_shoes_-_sepatu_kasual_santai_full01_ld48p1pt.jpg"),
                    title: Text(
                      "Brand new shoes",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      "SH-231",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    isThreeLine: true,
                    trailing: Icon(
                      Icons.delete_forever,
                      color: Colors.red,
                      size: 20,
                    ),
                  ));
            }));
  }
}
