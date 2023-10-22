import 'package:flutter/cupertino.dart';

class BookMarkHeadLine extends StatelessWidget {
  String text;
  String subText;
  String image;
    BookMarkHeadLine({super.key,required this.text,required this.subText,required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        width: 366,
        height: 80,
        child: Row(
           children: [
             Column(
               children: [
                 Text(text,style: TextStyle(
                   color: Color(0xff231F20),
                   fontWeight: FontWeight.w600,
                   fontSize: 18,

                 ) ,
                   maxLines: 2,
                 ),
                 SizedBox(height: 4,),
                 Text(subText,style: TextStyle(
                   color: Color(0xff6D6265),
                   fontSize: 12,
                   fontWeight: FontWeight.w400,
                 ),)
               ],
             ),
             SizedBox(width: 16,),
             Image.network(image,width: 112,height:80 ,fit: BoxFit.cover,),
           ],
        ),
      ),
    );
  }
}
