import 'package:matus0380/pantallas0380/panel0380/Item_crepas.dart';
import 'package:flutter/material.dart';

class PanelPantalla0380 extends StatelessWidget {
  const PanelPantalla0380({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int i;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff989898),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/MatusG128/img_IOS/main/logo.jpg"),
            ),
          )
        ],
        title: Text(
          "Crepas La Tribu 0380",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0x8c828282),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.1),
                    spreadRadius: 5,
                    blurRadius: 5)
              ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search",
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff5f5f5f),
                )),
          ),
        ),
        Container(
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/MatusG128/img_IOS/main/cafees.jpg"))),
        ),
        ListTile(
          title: Text("Crepas La Tribu"),
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
          trailing: Icon(Icons.filter_list_outlined),
        ),
        Expanded(
            child: GridView.count(
          padding: EdgeInsets.all(15),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          children: [for (i = 1; i <= 10; i++) Itemcrepas()],
        ))
      ]),
    );
  }
}
