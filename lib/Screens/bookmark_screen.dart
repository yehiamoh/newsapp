import 'package:flutter/material.dart';
import 'package:newsapp/Models/news_model.dart';
import 'package:newsapp/repositries/news_repo.dart';
import 'package:newsapp/widgets/bookmarkheadline.dart';

class BookMark extends StatelessWidget {
  const BookMark({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("News",style: TextStyle(
                    color: Color(0xff231F20),
                    fontSize:32 ,
                    fontWeight:FontWeight.w700 ,
                  ),),

                ],
              ),
            ),
            FutureBuilder(
              future: NewsRepo().getNews(),
              builder: (context, snapshot) {
                return Container(
                  height: 100,
                  width: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:snapshot.data?.length,
                      itemBuilder: (context,i){
                        return BookMarkHeadLine(text: snapshot.data![i].title,  subText: snapshot.data![i].author,image: snapshot.data![i].urlToImage,);
                  }),
                );
              }
            )
          ],
        ),

      ),
    );
  }
}
