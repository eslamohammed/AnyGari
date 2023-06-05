import 'package:flutter/material.dart';
import 'package:transport/screens/select_driver_screen/waiting_screen.dart';

import '../../constants/utils/colors_package.dart';

class DriverRequestSearchingScreen extends StatefulWidget {
  const DriverRequestSearchingScreen({Key? key}) : super(key: key);

  @override
  State<DriverRequestSearchingScreen> createState() => _DriverRequestSearchingScreenState();
}

class _DriverRequestSearchingScreenState extends State<DriverRequestSearchingScreen> {

  String url = 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            children: [

              // APPBAR
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 70,
                  color: BackGroundColor,
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 20,
                      ),
                      Text('Searching...',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text('Found: 4'),
              ),
              SizedBox(height: 10,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WaitingScreen()));
                },
                child: Container(
                  padding:  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // IMAGE
                      SizedBox(
                        width: 45,
                        height: 45,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Image(
                            image: NetworkImage(url),
                            width: 55,
                            height: 55,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),

                      // DRIVER NAME
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Marks',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                          SizedBox(height: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('4.9',
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text('5G',
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text('TATA',
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '₹ 25.00',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(width: 2,),
                          Radio(
                              activeColor: primaryColor,
                              toggleable: true,
                              value: 0,
                              groupValue: 0,
                              onChanged: (value) {}
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // IMAGE
                    SizedBox(
                      width: 45,
                      height: 45,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image(
                          image: NetworkImage(url),
                          width: 55,
                          height: 55,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),

                    // DRIVER NAME
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Marks',
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('4.9',
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text('5G',
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text('TATA',
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Expanded(child: Container()),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '₹ 25.00',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(width: 2,),
                        Radio(
                            activeColor: primaryColor,
                            toggleable: true,
                            value: 0,
                            groupValue: 1,
                            onChanged: (value) {}
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // IMAGE
                    SizedBox(
                      width: 45,
                      height: 45,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image(
                          image: NetworkImage(url),
                          width: 55,
                          height: 55,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),

                    // DRIVER NAME
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Marks',
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('4.9',
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text('5G',
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text('TATA',
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Expanded(child: Container()),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '₹ 25.00',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(width: 2,),
                        Radio(
                          splashRadius: 8,
                            activeColor: primaryColor,
                            toggleable: true,
                            value: 0,
                            groupValue: 1,
                            onChanged: (value) {}
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
