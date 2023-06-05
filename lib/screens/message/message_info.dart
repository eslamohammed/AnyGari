import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';

import 'message.dart';

class MessageInfoScreen extends StatefulWidget {
  const MessageInfoScreen({Key? key}) : super(key: key);

  @override
  State<MessageInfoScreen> createState() => _MessageInfoScreenState();
}

class _MessageInfoScreenState extends State<MessageInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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

          MessageInfoCard()

        ],
      ),
      bottomNavigationBar: PrimaryBottomNavBar(context),
    );
  }
}


class MessageInfoCard extends StatefulWidget {
  const MessageInfoCard({Key? key}) : super(key: key);

  @override
  State<MessageInfoCard> createState() => _MessageInfoCardState();
}

class _MessageInfoCardState extends State<MessageInfoCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()));
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

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text('Jay Singh',
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

                    Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white
                        ),
                        child: Image(
                            color: Colors.black,
                            image: AssetImage('assets/images/phone_fill.png')
                        )
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
