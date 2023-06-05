import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DriverDetailCard extends StatefulWidget {
  const DriverDetailCard({Key? key}) : super(key: key);

  @override
  State<DriverDetailCard> createState() => _DriverDetailCardState();
}

class _DriverDetailCardState extends State<DriverDetailCard> {


  @override
  void initState() {
    loadDriverDetails();
    super.initState();
  }
  //
  loadDriverDetails() async{
    var driverJSON = await rootBundle.loadString("assets/files/driver_list.json");
    var decodeData = jsonDecode(driverJSON);
    var driverDetails = decodeData["driverlist"];
    print(driverJSON);
    DriverModel.driverList = List.from(driverDetails).map<Driver>((driver) => Driver.fromMap(driver)).toList();
    print('Decode: $decodeData');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 455,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
        return DriverDetails();
      }),
    );
  }
}

class DriverDetails extends StatelessWidget {
 const DriverDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      margin: const EdgeInsets.only(bottom: 1),
      width: MediaQuery.of(context).size.width,
      height: 72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: Image(
                image: NetworkImage('https://images.unsplash.com/photo-1651684215020-f7a5b6610f23?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Joe Matte',
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('4 Seater',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 5,),
                  RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                              child: Icon(Icons.star,
                                size: 16,
                                color: Colors.yellow,
                              ),
                          ),
                          TextSpan(
                            text: '4.5',
                            style: TextStyle(
                              color: Colors.grey
                            )
                          )
                        ]
                      ))
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
                '₹459.00',
                style: TextStyle(
                    color: Colors.black,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(width: 2,),
              SizedBox(
                height: 15,
                width: 25,
                child: Radio(
                    toggleable: true,
                    fillColor: MaterialStateColor.resolveWith((states) => Colors.grey),
                    value: 0,
                    groupValue: 0,
                    onChanged: (value) { }
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
class DriverModel {
  static List<Driver> driverList = [];
}
class Driver {
  int id;
  String driverImg;
  String name;
  int seats;
  double rating;
  double price;

  Driver({
    required this.id,
    required this.driverImg,
    required this.name,
    required this.seats,
    required this.rating,
    required this.price,
});

  factory Driver.fromMap(Map<String, dynamic> map) {
    return Driver(
        id: map['id'],
        driverImg: map['driverImg'],
        name: map['name'],
        seats: map['seats'],
        rating: map['rating'],
        price: map['price'],
    );
  }

  toMap() => {
    'id': id,
    'driverImg': driverImg,
    'name': name,
    'seats': seats,
    'rating': rating,
    'price': price,
  };

}
