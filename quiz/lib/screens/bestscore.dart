import 'package:flutter/material.dart';

class BestScore extends StatefulWidget {
  const BestScore({Key key}) : super(key: key);

  @override
  _BestScoreState createState() => _BestScoreState();
}

class _BestScoreState extends State<BestScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(children: [
        SizedBox(
          height: 100,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                    },
                    child: ButtonTheme(
                      minWidth: 150.0,
                      height: 50.0,
                      child: RaisedButton(
                        child: Text('Jouer'),
                        color: Colors.white,
                        textColor: Colors.black,
                        onPressed: () {},
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                    },
                    child: ButtonTheme(
                      minWidth: 150.0,
                      height: 50.0,
                      child: RaisedButton(
                        child: Text('Meilleurs Scores'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BestScore()));
                        },
                      ),
                    )),
              ),
            ]),
        SizedBox(height: 30.0),
        Center(
            child: Container(
          margin: EdgeInsets.all(12.0),
          height: MediaQuery.of(context).size.height / 2,
          color: Colors.white,
          child: ListView(
            children: [
              Table(
                border: TableBorder(
                  horizontalInside: BorderSide(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 0.5,
                  ),
                ),
                children: [
                  TableRow(children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 3,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("1",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("Eclesiaste ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child:
                            Text("8545", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("2",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("Jod Fedlet Pierre",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child:
                            Text("5322", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("3",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("Loudjina Chery",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child:
                            Text("4656", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("4",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("Damas Serius",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child:
                            Text("3246", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("5",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("Laouni Laouni",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child:
                            Text("3000", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("6",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("Sarah André",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child:
                            Text("2645", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("7",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text("Abdias Revolte",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 4,
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child:
                            Text("2099", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ])
                ],
              ),
            ],
          ),
        ))
      ]),
    );
  }
}
