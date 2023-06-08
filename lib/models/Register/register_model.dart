
import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
    String fullName;
    int mobile;
    String email;
    String address;
    String dob;

    RegisterModel({
        required this.fullName,
        required this.mobile,
        required this.email,
        required this.address,
        required this.dob,
    });

    factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        fullName: json["full_name"],
        mobile: json["mobile"],
        email: json["email"],
        address: json["address"],
        dob: json["dob"],
    );

    Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "mobile": mobile,
        "email": email,
        "address": address,
        "dob": dob,
    };
}
