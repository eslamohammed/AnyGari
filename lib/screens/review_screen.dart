import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:transport/constants/utils/utils.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Rate your trip',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const Text('How was your trip',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                    ),
                  ),
                  const SizedBox(height: 15),

                  RatingBar.builder(
                    glow: false,
                    unratedColor: Colors.grey.shade300,
                    itemBuilder: (BuildContext context, int index) =>const Icon(Icons.star,color: Colors.amberAccent,),
                    onRatingUpdate: (rating) {  },
                  ),
                  const SizedBox(height: 30),

                  Container(
                    width: deviceWidth,
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Message (Optional)',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14
                          ),
                        ),
                        const TextField(
                          maxLines: 4,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Color(0xFF666666),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0
                            ),
                            contentPadding: EdgeInsets.all(20.0),
                            enabledBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF999999)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:Color(0XFF999999)),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        ConstrainedBox(
                            constraints: BoxConstraints.tightFor(width: deviceWidth, height: 55),
                          child: PrimaBottomButton.nameofPrimaryButton(context, 'Submit', (){}),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
