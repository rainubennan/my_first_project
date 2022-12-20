import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Carousel_Slider(),
  debugShowCheckedModeBanner: false,));
}

class Carousel_Slider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Carousel Slider"),),
     body: ListView(children: [
       CarouselSlider(
           items:[
         Container(
           margin: EdgeInsets.all(8),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             image: DecorationImage(
               image: NetworkImage("https://media.istockphoto.com/id/477644987/photo/chinese-fishing-nets-cochin-kerala.jpg?b=1&s=170667a&w=0&k=20&c=fBIpSkHqSinj32xQ6cZnV8PsQbQUIn0uaW9-sxCKHlM="),
               fit: BoxFit.fill
             )
           ),
         ),
             Container(
               margin: EdgeInsets.all(8),
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                       image: NetworkImage("https://media.istockphoto.com/id/1354441996/photo/image-of-open-antique-book-on-wooden-table-with-glitter-overlay.jpg?b=1&s=170667a&w=0&k=20&c=O_VZbgONe4WTXPOEvwKYezhqFkzAXpr2g-lCdpdj5FU="),
                       fit: BoxFit.fill
                   )
               ),
             ),
             Container(
               margin: EdgeInsets.all(8),
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                       image: NetworkImage("https://burst.shopifycdn.com/photos/person-holds-a-book-over-a-stack-and-turns-the-page.jpg?width=1200&format=pjpg&exif=0&iptc=0"),
                       fit: BoxFit.fill
                   )
               ),
             ),
       ], options: CarouselOptions(
         height: 250,
         enlargeCenterPage: true,
         autoPlay: true,
         aspectRatio: 16/9,
         autoPlayCurve: Curves.fastOutSlowIn,
         enableInfiniteScroll: true,
         autoPlayAnimationDuration: Duration(milliseconds: 300),viewportFraction: 0.8,

       ))
     ],),
   );
  }

}