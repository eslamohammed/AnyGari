// To parse this JSON data, do
//
//     final divisionListModel = divisionListModelFromJson(jsonString);

import 'dart:convert';

DivisionListModel divisionListModelFromJson(String str) => DivisionListModel.fromJson(json.decode(str));

String divisionListModelToJson(DivisionListModel data) => json.encode(data.toJson());

class DivisionListModel {
    int? code;
    List<DivisionList>? divisionList;

    DivisionListModel({
        this.code,
        this.divisionList,
    });

    factory DivisionListModel.fromJson(Map<String, dynamic> json) => DivisionListModel(
        code: json["code"],
        divisionList: json["divisionList"] == null ? [] : List<DivisionList>.from(json["divisionList"]!.map((x) => DivisionList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "divisionList": divisionList == null ? [] : List<dynamic>.from(divisionList!.map((x) => x.toJson())),
    };
}

class DivisionList {
    String? id;
    String? division;
    int? v;

    DivisionList({
        this.id,
        this.division,
        this.v,
    });

    factory DivisionList.fromJson(Map<String, dynamic> json) => DivisionList(
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
