import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RainIt();
  }
}

class RainIt extends State<MakeItRain> {
  int _moneycounter=100;
  Color _low=Colors.brown;
  Color _high=Colors.pink;
  Color _set=Colors.pink;
  void _rainMoney(){
    setState(() {
      _moneycounter=_moneycounter+100;
      if(_moneycounter<=1000)
        {
          _set=_low;
        }
        else
          {
            _set=_high;
          }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text(
          'Make It Rain',
          style: TextStyle(color: Colors.pink, fontSize: 40.0),
        ),
      ),
      backgroundColor: Colors.cyanAccent,
      body: Column(
        children: <Widget>[
          Center(
              child: Text(
            'Get Rich',
            style: TextStyle(fontSize: 60.0, color: Colors.green.shade200),
          )),
          Expanded(
              child: Center(
                  child: Text(
            '$_moneycounter',
            style: TextStyle(fontSize: 70.0, color: _set),
          ))),
          Expanded(
              child: Center(
                  child: FlatButton(
                      onPressed: _rainMoney,
                      color: Theme.of(context).buttonColor,
                      child: Text(
                        'Get Rich',
                        style: TextStyle(color: Colors.black, fontSize: 30.0),
                      ))))
        ],
      ),
    );
  }
}
