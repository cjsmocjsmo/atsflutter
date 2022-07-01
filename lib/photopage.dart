import 'package:flutter/material.dart';
import 'piclist.dart';

class PicWidget extends StatelessWidget {
  const PicWidget({Key? key, required this.pic, required this.thumbnail})
      : super(key: key);
  final String pic;
  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text("Estimate"),
                  backgroundColor: Colors.blue,
                ),
                body: Center(
                  child: SizedBox(
                    height: 1067,
                    width: 600,
                    child: Image.asset(pic),
                  ),
                ),
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 5.0, right: 5.0),
        height: 350,
        alignment: const Alignment(0, 0),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          border: Border.all(
            color: Colors.greenAccent, //color of border
            width: 3, //width of border
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(thumbnail),
      ),
    );
  }
}

class LandscapePhotosButton extends StatelessWidget {
  const LandscapePhotosButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text("More Photos"),
                    backgroundColor: Colors.blue,
                  ),
                  body: const LandscapePhotosGrid(),
                );
              },
            ),
          );
        },
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "Landscape",
            style: TextStyle(
              fontSize: 28,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }
}

class LandscapePhotosGrid extends StatelessWidget {
  const LandscapePhotosGrid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 16 / 9,
          crossAxisSpacing: 1,
          mainAxisSpacing: 10),
      itemCount: combLandscapeList.length,
      itemBuilder: (BuildContext context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text("Landscape"),
                      backgroundColor: Colors.blue,
                    ),
                    body: Center(
                      child: SizedBox(
                        height: 1067,
                        width: 600,
                        child: Image.asset(combLandscapeList[index]["pic"]),
                      ),
                    ),
                  );
                },
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(combLandscapeList[index]["thumb"]),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        );
      },
    );
  }
}

class PortraitPhotosButton extends StatelessWidget {
  const PortraitPhotosButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text("More Photos"),
                    backgroundColor: Colors.blue,
                  ),
                  body: const PortraitPhotosGrid(),
                );
              },
            ),
          );
        },
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "Portrait",
            style: TextStyle(
              fontSize: 28,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }
}

class PortraitPhotosGrid extends StatelessWidget {
  const PortraitPhotosGrid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 9 / 16,
          crossAxisSpacing: 20,
          mainAxisSpacing: 1),
      itemCount: combPortraitList.length,
      itemBuilder: (BuildContext context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text("Portrait"),
                      backgroundColor: Colors.blue,
                    ),
                    body: Center(
                      child: SizedBox(
                        height: 1067,
                        width: 600,
                        child: Image.asset(combPortraitList[index]["pic"]),
                      ),
                    ),
                  );
                },
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(combPortraitList[index]["thumb"]),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        );
      },
    );
  }
}
