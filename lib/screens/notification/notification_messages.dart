import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NotificationMessage extends StatefulWidget {
  const NotificationMessage({Key? key}) : super(key: key);

  @override
  State<NotificationMessage> createState() => _NotificationMessageState();
}

class _NotificationMessageState extends State<NotificationMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Vehicle Icon
          Container(
            height: 55,
            width: 55,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(55)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: const Image(
                image: AssetImage('assets/images/home/car_line.png'),
                color: Colors.grey,
                width: 25,
                height: 25,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 10,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ride Successfull',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 2),
              Text('5-min left',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Expanded(child: Container()),

          RatingBar.builder(
            glow: false,
            itemSize: 20,
            unratedColor: Colors.grey.shade300,
            itemBuilder: (BuildContext context, int index) => Icon(Icons.star,color: Colors.amberAccent,),
            onRatingUpdate: (rating) {  },
          ),
        ],
      ),
    );
  }
}
