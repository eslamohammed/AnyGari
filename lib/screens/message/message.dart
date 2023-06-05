import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';
import 'package:transport/screens/message/message_info.dart';

import '../../constants/utils/colors_package.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // APPBAR
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text('Message',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                )
              ),
            ),
            SizedBox(height: 10),

            MessageCard()
          ],
        ),
      ),
      bottomNavigationBar: PrimaryBottomNavBar(context),
    );
  }
}


class MessageCard extends StatefulWidget {
  const MessageCard({Key? key}) : super(key: key);

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MessageInfoScreen()));
          },
          child: Container(
            padding:  EdgeInsets.symmetric(horizontal: 42, vertical: 10),
            margin: EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 75,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.3
                    )
                )
            ),
            child: Row(
              children: [
                // IMAGE
                SizedBox(
                  width: 55,
                  height: 55,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(55),
                    child: Image(
                      image: NetworkImage(''),
                      width: 55,
                      height: 55,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                // DRIVER NAME, MESSAGE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text('Jay Sing',
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                            width: 17,
                            height: 17,
                            // padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0XFFFFEDED)
                            ),
                            child: Center(
                              child: Text('01',
                                style: TextStyle(
                                    color: Color(0XFFDF0000),
                                    fontSize: 7
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 2,),
                    Text('We are at your pick up point',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),

                // DATE
                Text('02 Jul',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 30),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                 width: 260,
                 padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                 decoration: BoxDecoration(
                   color: primaryColor,
                   borderRadius: BorderRadius.only(
                     topRight: Radius.circular(10),
                     topLeft: Radius.circular(10),
                     bottomLeft: Radius.circular(0),
                     bottomRight: Radius.circular(10)
                   )
                 ),
                 child: Text('Hello,\nI will be waiting near your\npickup point @11:00AM',
                   style: TextStyle(
                     color: Colors.white
                   ),
                 ),
               ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '10:15AM  ',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey
                          )
                        ),
                        // TODO DOT
                        TextSpan(
                          text: '  Today',
                            style: TextStyle(
                                fontSize: 9,
                                color: Colors.grey
                            )
                        )
                      ]
                    )
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
