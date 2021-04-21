import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _checked1 = true, _checked2 = true;
  double _currentRangeValues1 = 0;
  double _currentRangeValues2 = 0;
  double _currentRangeValues3 = 0;

  double ss = 0;
  double s = 100.0;
  double m = 250.0;
  double l = 400.0;
  double size = 100.0;

  void increment() {
    if (size != l) {
      size = size + 50;
    } else {}
  }

  void decrement() {
    if (size != s) {
      size = size - 50;
    } else {}
  }

  double getsize() {
    return size;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'My Icon',
                style: TextStyle(fontSize: 18),
              ),
              backgroundColor: Colors.brown,
              actions: [
                Visibility(
                    visible: _checked1,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Container(
                            margin: EdgeInsets.all(0.0),
                            padding: EdgeInsets.all(7),
                            child: Text('-'),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                )),
                          ),
                          onPressed: () => setState(decrement),
                        ),
                        IconButton(
                          icon: Container(
                            margin: EdgeInsets.all(0.0),
                            padding: EdgeInsets.all(4),
                            child: Text('S'),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                )),
                          ),
                          onPressed: () {
                            setState(() {
                              size = s;
                            });
                          },
                        ),
                        IconButton(
                          icon: Container(
                            margin: EdgeInsets.all(0.0),
                            padding: EdgeInsets.all(2),
                            child: Text('M'),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                )),
                          ),
                          onPressed: () {
                            setState(() {
                              size = m;
                            });
                          },
                        ),
                        IconButton(
                          icon: Container(
                            margin: EdgeInsets.all(0.0),
                            padding: EdgeInsets.all(5),
                            child: Text('L'),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                )),
                          ),
                          onPressed: () {
                            setState(() {
                              size = l;
                            });
                          },
                        ),
                        IconButton(
                          icon: Container(
                            margin: EdgeInsets.all(0.0),
                            padding: EdgeInsets.all(6),
                            child: Text('+'),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                )),
                          ),
                          onPressed: () => setState(increment),
                        ),
                      ],
                    )),
              ],
            ),
            body: Center(
                child: Column(children: [
              Container(
                height: 480,
                child: Icon(
                  Icons.alarm,
                  color: Color.fromRGBO(
                      _currentRangeValues1.toInt(),
                      _currentRangeValues2.toInt(),
                      _currentRangeValues3.toInt(),
                      1.0),
                  size: getsize(),
                ),
              )
            ])),
            bottomNavigationBar: SizedBox(
              height: 190,
              child: Column(
                children: [
                  Visibility(
                      visible: _checked2,
                      child: Row(children: <Widget>[
                        Expanded(
                          flex: 8, // 70%
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.brown,
                                inactiveTrackColor: Colors.brown[100],
                                trackHeight: 3.0,
                                thumbColor: Colors.brown,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 8.0),
                                overlayColor: Colors.purple.withAlpha(32),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 20.0),
                              ),
                              child: Slider(
                                  value: _currentRangeValues1,
                                  min: 0.0,
                                  max: 255.0,
                                  divisions: 255,
                                  onChanged: (value) {
                                    setState(() {
                                      _currentRangeValues1 = value;
                                    });
                                  }),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2, // 30%
                          child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: FloatingActionButton(
                                child: Text(
                                  _currentRangeValues1.toStringAsFixed(0),
                                ),
                                backgroundColor: Colors.red,
                                onPressed: () {
                                  setState(() {
                                    _currentRangeValues1 = 255.0;
                                    _currentRangeValues2 = 0.0;
                                    _currentRangeValues3 = 0.0;
                                  });
                                },
                              )),
                        ),
                      ])),
                  Visibility(
                      visible: _checked2,
                      child: Row(children: <Widget>[
                        Expanded(
                          flex: 8, // 70%
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.brown,
                                inactiveTrackColor: Colors.brown[100],
                                trackHeight: 3.0,
                                thumbColor: Colors.brown,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 8.0),
                                overlayColor: Colors.purple.withAlpha(32),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 20.0),
                              ),
                              child: Slider(
                                  value: _currentRangeValues2,
                                  min: 0.0,
                                  max: 255.0,
                                  divisions: 255,
                                  onChanged: (value) {
                                    setState(() {
                                      _currentRangeValues2 = value;
                                    });
                                  }),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2, // 30%
                          child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: FloatingActionButton(
                                child: Text(
                                  _currentRangeValues2.toStringAsFixed(0),
                                ),
                                backgroundColor: Colors.green,
                                onPressed: () {
                                  setState(() {
                                    _currentRangeValues1 = 0.0;
                                    _currentRangeValues2 = 255.0;
                                    _currentRangeValues3 = 0.0;
                                  });
                                },
                              )),
                        ),
                      ])),
                  Visibility(
                      visible: _checked2,
                      child: Row(children: <Widget>[
                        Expanded(
                          flex: 8, // 70%
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.brown,
                                inactiveTrackColor: Colors.brown[100],
                                trackHeight: 3.0,
                                thumbColor: Colors.brown,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 8.0),
                                overlayColor: Colors.purple.withAlpha(32),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 20.0),
                              ),
                              child: Slider(
                                  value: _currentRangeValues3,
                                  min: 0.0,
                                  max: 255.0,
                                  divisions: 255,
                                  onChanged: (value) {
                                    setState(() {
                                      _currentRangeValues3 = value;
                                    });
                                  }),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2, // 30%
                          child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: FloatingActionButton(
                                child: Text(
                                  _currentRangeValues3.toStringAsFixed(0),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _currentRangeValues1 = 0.0;
                                    _currentRangeValues2 = 0.0;
                                    _currentRangeValues3 = 255.0;
                                  });
                                },
                              )),
                        ),
                      ])),
                ],
              ),
            ),
            drawer: Drawer(
              child: ListView(children: <Widget>[
                Card(
                    child: CheckboxListTile(
                  title: const Text('Allow resize?'),
                  value: _checked1,
                  onChanged: (bool value) {
                    setState(() {
                      _checked1 = value;
                    });
                  },
                )),
                Card(
                    child: CheckboxListTile(
                  title: const Text('Allow change primer color?'),
                  value: _checked2,
                  onChanged: (bool value) {
                    setState(() {
                      _checked2 = value;
                    });
                  },
                )),
              ]),
            )));
  }
}
