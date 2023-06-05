import 'package:flutter/material.dart';

import '../../constants/utils/colors_package.dart';
import '../support_screen.dart';

class RideDetailScreen extends StatefulWidget {
  const RideDetailScreen({Key? key}) : super(key: key);

  @override
  State<RideDetailScreen> createState() => _RideDetailScreenState();
}

class _RideDetailScreenState extends State<RideDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackGroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // APPBAR
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios_new,
                            size: 18,
                          ),
                        ),
                        Expanded(child: Container()),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SupportScreen()));
                          },
                          child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Icon(Icons.headset_mic,
                                size: 18,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('Trip Info',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      // MAP ADDRESS
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: Text('Map Integration'),
                        ),
                      ),
                      SizedBox(height: 20,),

                      // CUSTOMER DETAILS
                      CustomerDetails(),
                      SizedBox(height: 20,),

                      // TRIP DETAILS
                      TripDetails(),
                      SizedBox(height: 20,),

                      // VEHICLE
                      VehicleInfo(),
                      SizedBox(height: 10,),

                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SupportScreen()));
                              },
                              child: Text('SUPPORT & HELP'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

class CustomerDetails extends StatefulWidget {
  const CustomerDetails({Key? key}) : super(key: key);

  @override
  State<CustomerDetails> createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: Image(
              image: NetworkImage('https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
              width: 45,
              height: 45,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 10,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 175,
                child: Text('Marry Jhonson',
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                ),
              ),


            ],
          ),
          Expanded(child: Container()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Fare',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                ),
              ),
              Text('- \$156.00',
                style: TextStyle(
                    fontSize: 14,
                    color: SuccessfulColor,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TripDetails extends StatefulWidget {
  const TripDetails({Key? key}) : super(key: key);

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.grey
          )
      ),
      child: Column(
        children: [
          // Trip Info & Trip Number
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Trip Info',
                style: TextStyle(
                    fontWeight: FontWeight.w500
                ),
              ),
              Expanded(child: Container()),
              Text('Trip Number#2586')
            ],
          ),
          SizedBox(height: 20,),

          // PickUp & Drop Label
          Row(
            children: [
              Expanded(
                  child: Text('Pick Up',
                    style: TextStyle(
                        color: Colors.grey.shade500
                    ),
                  )
              ),
              SizedBox(width: 15,),
              Expanded(
                  child: Text('Drop',
                    style: TextStyle(
                        color: Colors.grey.shade500
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: 5,),

          // PickUp & Drop Details
          Row(
            children: [
              Expanded(
                  child: Text('1901 Thornridge Cir. Shiloh, Hawaii 81603',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    ),
                  )
              ),
              SizedBox(width: 15,),
              Expanded(
                  child: Text('4140 Parker Rd. Allentown, New Mexico 31134',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: 15,),

          // Date & Time Label
          Row(
            children: [
              Expanded(
                  child: Text('Date',
                    style: TextStyle(
                        color: Colors.grey.shade500
                    ),
                  )
              ),
              SizedBox(width: 15,),
              Expanded(
                  child: Text('Time',
                    style: TextStyle(
                        color: Colors.grey.shade500
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: 5,),

          // Date & Time Details
          Row(
            children: [
              Expanded(
                  child: Text('14th Aug, Thu',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    ),
                  )
              ),
              SizedBox(width: 15,),
              Expanded(
                  child: Text('10:30 AM',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class VehicleInfo extends StatefulWidget {
  const VehicleInfo({Key? key}) : super(key: key);

  @override
  State<VehicleInfo> createState() => _VehicleInfoState();
}

class _VehicleInfoState extends State<VehicleInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.grey
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Vehicle Info',
            style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: 15,),

          Row(
            children: [
              Expanded(
                  child: Text('Vehicle Type',
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey.shade500
                    ),
                  )
              ),
              Expanded(
                  child: Text('Vehicle No',
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey.shade500
                    ),
                  )
              ),
              Expanded(
                  child: Text('Vehicle Condition',
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey.shade500
                    ),
                  )
              )

            ],
          ),
          SizedBox(height: 5,),

          Row(
            children: [
              Expanded(
                  child: Text('Sedan( AC )',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    ),
                  )
              ),
              Expanded(
                  child: Text('AF2569A',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    ),
                  )
              ),
              Expanded(
                  child: Text('Good',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    ),
                  )
              )

            ],
          )
        ],
      ),
    );
  }
}
