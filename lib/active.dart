//导入cupertino  widget 库
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BoxA());

class BoxA extends StatefulWidget {
  const BoxA({Key? key}) : super(key: key);

  @override
  _BoxAState createState() => _BoxAState();
}

class _BoxAState extends State<BoxA> {
  bool _active = true;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
