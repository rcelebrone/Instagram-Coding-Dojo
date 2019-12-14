import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  var _listPosts = List<Card>();

  @override
  void initState() {
    for (var i = 0; i < 10; i++) {
      _listPosts.add(new Card(
          child: Column(
        children: <Widget>[
          Padding(
            child: Row(
              children: <Widget>[
                Icon(Icons.person),
                Text(i.toString() + ") nome do peão"),
              ],
            ),
            padding: EdgeInsets.all(15),
          ),
          Image.network("https://picsum.photos/600/600/?s=" + i.toString(),
              fit: BoxFit.cover),
          Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.favorite), onPressed: () => null),
              IconButton(icon: Icon(Icons.chat_bubble), onPressed: () => null),
              IconButton(icon: Icon(Icons.send), onPressed: () => null)
            ],
          ),
          Padding(
            child: Row(
              children: <Widget>[
                Text("Curtido por "),
                Text(
                  "thetrueportal",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(" e "),
                Text(
                  "outras pessoas",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            padding: EdgeInsets.all(5),
          ),
          Padding(
            child: Row(
              children: <Widget>[
                Text("nome do peão ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Olha que foto legal!! :) "),
                Text("#segredodafelicidade",
                    style: TextStyle(
                        color: Colors.lightBlue,
                        decoration: TextDecoration.underline))
              ],
            ),
            padding: EdgeInsets.all(5),
          ),
          Padding(
              child: Row(children: <Widget>[
                Text("Ver todos os 50 comentários",
                    style: TextStyle(color: Colors.grey))
              ]),
              padding: EdgeInsets.fromLTRB(5, 5, 0, 5)
          ),


          Padding(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () => null,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (v) => null,
                    decoration: InputDecoration(
                        hintText: "Adicione um comentário...",
                        border: InputBorder.none
                      )
                    ),
                ),
              ],
            ),
            padding: EdgeInsets.all(5)
          )

        ],
      )));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram Segredo",
            style: TextStyle(fontFamily: 'BILLABONG')),
        backgroundColor: Colors.grey,
        leading: Icon(Icons.photo_camera),
      ),
      body: Container(
        child: ListView(
          children: _listPosts,
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home), onPressed: () => null
          ),
          IconButton(
            icon: Icon(Icons.search), onPressed: () => null
          ),
          IconButton(
            icon: Icon(Icons.add), onPressed: () => null
          ),
          IconButton(
            icon: Icon(Icons.favorite), onPressed: () => null
          ),
          IconButton(
            icon: Icon(Icons.person), onPressed: () => null
          )
        ],
      ),
    );
  }
}
