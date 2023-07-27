import 'package:flutter/material.dart';
import 'package:transition/transition.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  List<String> images = [
    "https://pbs.twimg.com/media/EU7NGU2U4AEzku7?format=jpg&name=small",
    "https://pbs.twimg.com/media/D7TfLD3XYAAi7ds?format=jpg&name=small",
    "https://pbs.twimg.com/media/ElBE3WHXUAQifYL?format=jpg&name=small",
    "https://pbs.twimg.com/media/DO5zZVxW0AEYQ_F?format=jpg&name=small",
    "https://pbs.twimg.com/media/DGkjDVFW0AAUNyo?format=jpg&name=small",
    "https://pbs.twimg.com/media/F10SR59WcAABHvJ?format=jpg&name=small",
    "https://pbs.twimg.com/media/F17X0OoXwAEZiaV?format=jpg&name=small",
    "https://pbs.twimg.com/media/F10SR4hXoA47lTd?format=jpg&name=small",
    "https://pbs.twimg.com/media/EU7NGU2U4AEzku7?format=jpg&name=small",
    "https://pbs.twimg.com/media/D7TfLD3XYAAi7ds?format=jpg&name=small",
    "https://pbs.twimg.com/media/ElBE3WHXUAQifYL?format=jpg&name=small",
    "https://pbs.twimg.com/media/DO5zZVxW0AEYQ_F?format=jpg&name=small",
    "https://pbs.twimg.com/media/DGkjDVFW0AAUNyo?format=jpg&name=small",
    "https://pbs.twimg.com/media/F10SR59WcAABHvJ?format=jpg&name=small",
    "https://pbs.twimg.com/media/F17X0OoXwAEZiaV?format=jpg&name=small",
    "https://pbs.twimg.com/media/F10SR4hXoA47lTd?format=jpg&name=small",
    "https://pbs.twimg.com/media/EU7NGU2U4AEzku7?format=jpg&name=small",
    "https://pbs.twimg.com/media/D7TfLD3XYAAi7ds?format=jpg&name=small",
    "https://pbs.twimg.com/media/ElBE3WHXUAQifYL?format=jpg&name=small",
    "https://pbs.twimg.com/media/DO5zZVxW0AEYQ_F?format=jpg&name=small",
    "https://pbs.twimg.com/media/DGkjDVFW0AAUNyo?format=jpg&name=small",
    "https://pbs.twimg.com/media/F10SR59WcAABHvJ?format=jpg&name=small",
    "https://pbs.twimg.com/media/F17X0OoXwAEZiaV?format=jpg&name=small",
    "https://pbs.twimg.com/media/F10SR4hXoA47lTd?format=jpg&name=small",

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        ),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              print(images[index]);
              Navigator.push(
                  context,
                  Transition(
                      child: ImageFull(
                        title: images[index],
                        ind: index,
                      ),
                      transitionEffect: TransitionEffect.FADE));
            },

          child:  Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey[100]),
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image.network(images[index])),
              ),
            ),
          );
          }));
  }
}

class ImageFull extends StatefulWidget {
  String title;
  int ind;
  ImageFull({super.key, required this.title, required this.ind});

  @override
  State<ImageFull> createState() => _ImageFullState();
}

class _ImageFullState extends State<ImageFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.ind}"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),
      body: Center(
        child: Image.network(widget.title),
      ),
    );
  }
}