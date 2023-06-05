// To parse this JSON data, do
//
//     final districtListModel = districtListModelFromJson(jsonString);

import 'dart:convert';

DistrictListModel districtListModelFromJson(String str) => DistrictListModel.fromJson(json.decode(str));

String districtListModelToJson(DistrictListModel data) => json.encode(data.toJson());

class DistrictListModel {
    int? code;
    List<DistrictList>? districtList;

    DistrictListModel({
        this.code,
        this.districtList,
    });

    factory DistrictListModel.fromJson(Map<String, dynamic> json) => DistrictListModel(
        code: json["code"],
        districtList: json["districtList"] == null ? [] : List<DistrictList>.from(json["districtList"]!.map((x) => DistrictList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "districtList": districtList == null ? [] : List<dynamic>.from(districtList!.map((x) => x.toJson())),
    };
}

class DistrictList {
    String? id;
    Division? division;
    String? district;
    int? v;

    DistrictList({
        this.id,
        this.division,
        this.district,
        this.v,
    });

    factory DistrictList.fromJson(Map<String, dynamic> json) => DistrictList(
        id: json["_id"],
        division: json["division"] == null ? null : Division.fromJson(json["division"]),
        district: json["district"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "division": division?.toJson(),
        "district": district,
        "__v": v,
    };
}

class Division {
    String? id;
    String? division;
    int? v;

    Division({
        this.id,
        this.division,
        this.v,
    });

    factory Division.fromJson(Map<String, dynamic> json) => Division(
        id: json["_id"],
        division: json["division"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "division": division,
        "__v": v,
    };
}
