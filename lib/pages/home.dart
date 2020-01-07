import 'package:flutterassignment/utils/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: hexToColor("#FE740C"),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Icon(Icons.menu, color: Colors.white)
                  ],
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        bottom: 20,
                      ),
                      child: Text(
                        "I am ricky",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    ImageCard(
                      img: "assets/images/image.png",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(width: 0.81))),
                    child: Text(
                      "Bio",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text("Chip Info"),
                  SizedBox(
                    width: 50,
                  ),
                  Text("Features"),
                ],
              ),
              Icon(Icons.local_offer)
            ],
          ),
        ),
        Container(
          padding:
              EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              BuildColumnBody(
                color: Colors.green,
                name: "10 mon",
                value: "Age",
              ),
              SizedBox(
                width: 20,
              ),
              BuildColumnBody(
                color: Colors.orange,
                name: "Male",
                value: "Sex",
              ),
              SizedBox(
                width: 20,
              ),
              BuildColumnBody(
                color: Colors.purpleAccent,
                name: "Shiba Inu",
                value: "Breed",
              ),
              SizedBox(
                width: 20,
              ),
              BuildColumnBody(
                color: Colors.orangeAccent,
                name: "14kg",
                value: "Weight",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BuildProfilePage(
            userImage: "assets/images/image.png",
            userName: "Damilola",
            feedTime: "45 july",
            feedText: "There a Flutter widget. The most basic way.",
          ),
        )
      ],
    );
  }
}

class BuildProfilePage extends StatelessWidget {
  final String userImage;
  final String userName;
  final String feedTime;
  final String feedText;
  BuildProfilePage(
      {this.userName, this.userImage, this.feedTime, this.feedText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(userImage), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userName,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        feedTime,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.grey[600],
                  ),
                  Text("1.3km")
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            feedText,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                height: 1.5,
                letterSpacing: .7),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class BuildColumnBody extends StatelessWidget {
  final String name;
  final String value;
  final Color color;

  BuildColumnBody({this.name, this.value, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            value,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String img;

  const ImageCard({Key key, this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Image.asset(
        img,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
