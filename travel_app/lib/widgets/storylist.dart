import 'package:flutter/material.dart';

class StoryList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StoryListState();
  }
}

class StoryListState extends State<StoryList> {
  List storyList = [
    {
      "name": "Hồ Hoàn Kiếm",
      "imageUrl":
          "https://huesmiletravel.com.vn/wp-content/uploads/2019/11/ho-hoan-kiem-ha-noi.jpg"
    },
    {
      "name": "Lăng Bác",
      "imageUrl":
          "https://huesmiletravel.com.vn/wp-content/uploads/2019/11/tham-quan-quang-truong-ba-dinh-ghe-tham-lang-bac.jpg"
    },
    {
      "name": "Fansipan",
      "imageUrl":
          "https://huesmiletravel.com.vn/wp-content/uploads/2019/11/chinh-phuc-dinh-fansipan.jpg"
    },
    {
      "name": "Đèo Mã Pí Lèng",
      "imageUrl":
          "https://huesmiletravel.com.vn/wp-content/uploads/2019/11/Deo-ma-pi-leng-ngoan-muc-noi-tieng-o-ha-giang.jpg"
    },
    {
      "name": "Tam Cốc",
      "imageUrl":
          "https://huesmiletravel.com.vn/wp-content/uploads/2019/11/tam-coc-ninh-binh.jpg"
    },
    {
      "name": "Vịnh Hạ Long",
      "imageUrl":
          "https://huesmiletravel.com.vn/wp-content/uploads/2019/11/vinh-ha-long-1.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              storyList.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.blueAccent, width: 3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              storyList[index]['imageUrl']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 75,
                        child: Align(
                            child: Text(
                          storyList[index]['name'],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        )),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
