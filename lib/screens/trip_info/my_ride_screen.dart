import 'package:flutter/material.dart';
import 'package:transport/screens/trip_info/ride_detail_screen.dart';

class MyRideScreen extends StatefulWidget {
  const MyRideScreen({Key? key}) : super(key: key);

  @override
  State<MyRideScreen> createState() => _MyRideScreenState();
}

class _MyRideScreenState extends State<MyRideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    iconSize: 20,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('Trip Info',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => MyRideCard(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyRideCard extends StatefulWidget {
  const MyRideCard({Key? key}) : super(key: key);

  @override
  State<MyRideCard> createState() => _MyRideCardState();
}

class _MyRideCardState extends State<MyRideCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => RideDetailScreen()));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          margin: const EdgeInsets.only(bottom: 5),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.grey.shade300
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 45,
                height: 45,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(55),
                  child: Image(
                    image: NetworkImage('https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Drop-Location',
                    style: const TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 175,
                    child: Text('2972 Westheimer RD. Santa Ana, Illinois 85486',
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('13th Jul',
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text('10:30AM',
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Price',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                    ),
                  ),
                  Text('- \$156.00',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
