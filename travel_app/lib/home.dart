import 'package:flutter/material.dart';
import 'package:travel_app/widgets/storylist.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _textSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(5),
            child: Container(
              height: 42,
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: _textSearch,
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Colors.grey),
                  suffixIcon: _textSearch == ""
                      ? null
                      : GestureDetector(
                          child: Icon(Icons.close, color: Colors.black),
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                        ),
                  hintText: "Tìm kiếm",
                  hintStyle: TextStyle(color: Colors.black54),
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.black),
                onChanged: null,
              ),
            ),
          ),
          StoryList(),
        ],
      ),
    );
  }
}
