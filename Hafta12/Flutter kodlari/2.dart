import 'package:flutter/material.dart';

void main()
{
  runApp(App());
}

class App extends StatelessWidget {
  var liste = [
    ["Diploma Hk.", "Hocam dersten kalıyorum..."],
    ["Ders Hk.", "Hocam bu hafta gelemiyorum..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
    ["Mazeret Hk.", "Hocam mazeret sınavı ne zaman..."],
  ];
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: Column(
            children: [
              Card(
                child: Text("Yapılanlar"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(
                    color: Colors.yellow,
                    width: 2.0
                  )

                ),
              ),

              ListTile(
                title: Text("Diploma Hk."),
                subtitle: Text(overflow: TextOverflow.ellipsis, maxLines: 2, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                leading: Icon(Icons.access_time_filled_sharp),
                trailing: Icon(Icons.exit_to_app),
              ),
              Divider(
                color: Colors.green,
                thickness: 2.0,
                indent: 30.0,
                endIndent: 30.0,
              ),
              ListTile(
                title: Text("Diploma Hk."),
                subtitle: Text(overflow: TextOverflow.ellipsis, maxLines: 2, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                leading: Icon(Icons.access_time_filled_sharp),
                trailing: Icon(Icons.exit_to_app),
              ),
              Divider(
                color: Colors.green,
                thickness: 2.0,
                indent: 30.0,
                endIndent: 30.0,
              ),
              ListTile(
                title: Text("Diploma Hk."),
                subtitle: Text(overflow: TextOverflow.ellipsis, maxLines: 2, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                leading: Icon(Icons.access_time_filled_sharp),
                trailing: Icon(Icons.exit_to_app),
              ),
              Divider(
                color: Colors.green,
                thickness: 2.0,
                indent: 30.0,
                endIndent: 30.0,
              ),
              ListTile(
                title: Text("Diploma Hk."),
                subtitle: Text(overflow: TextOverflow.ellipsis, maxLines: 2, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                leading: Icon(Icons.access_time_filled_sharp),
                trailing: Icon(Icons.exit_to_app),
              )

            ],
          ),
        ),

        appBar: AppBar(elevation: 0.0, title: Text("DrawerListTileDivider"), centerTitle: true,),
        body: new ListView.builder(
          itemCount: liste.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(liste[index][0]),
              subtitle: Text(liste[index][1]),
              trailing: Icon(Icons.access_alarm),

            );

        },)
      ),
    );
  }
}
