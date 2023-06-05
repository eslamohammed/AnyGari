// To parse this JSON data, do
//
//     final vehicleListModel = vehicleListModelFromJson(jsonString);

import 'dart:convert';

VehicleListModel vehicleListModelFromJson(String str) => VehicleListModel.fromJson(json.decode(str));

String vehicleListModelToJson(VehicleListModel data) => json.encode(data.toJson());

class VehicleListModel {
    int? code;
    List<VehicleList>? vehicleList;

    VehicleListModel({
        this.code,
        this.vehicleList,
    });

    factory VehicleListModel.fromJson(Map<String, dynamic> json) => VehicleListModel(
        code: json["code"],
        vehicleList: json["vehicleList"] == null ? [] : List<VehicleList>.from(json["vehicleList"]!.map((x) => VehicleList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "vehicleList": vehicleList == null ? [] : List<dynamic>.from(vehicleList!.map((x) => x.toJson())),
    };
}

class VehicleList {
    String? id;
    String? vehicleName;
    int? seatQty;
    bool? ac;
    String? registrationNo;
    String? vehicleType;
    String? vehicleCondition;
    int? v;

    VehicleList({
        this.id,
        this.vehicleName,
        this.seatQty,
        this.ac,
        this.registrationNo,
        this.vehicleType,
        this.vehicleCondition,
        this.v,
    });

    factory VehicleList.fromJson(Map<String, dynamic> json) => VehicleList(
        id: json["_id"],
        vehicleName: json["vehicle_name"],
        seatQty: json["seat_qty"],
        ac: json["ac"],
        registrationNo: json["registration_no"],
        vehicleType: json["vehicle_type"],
        vehicleCondition: json["vehicle_condition"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "vehicle_name": vehicleName,
        "seat_qty": seatQty,
        "ac": ac,
        "registration_no": registrationNo,
        "vehicle_type": vehicleType,
        "vehicle_condition": vehicleCondition,
        "__v": v,
    };
}
