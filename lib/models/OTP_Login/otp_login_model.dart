import 'dart:convert';

OtpLoginModel otpLoginModelFromJson(String str) => OtpLoginModel.fromJson(json.decode(str));

String otpLoginModelToJson(OtpLoginModel data) => json.encode(data.toJson());

class OtpLoginModel {
    int mobile;

    OtpLoginModel({
        required this.mobile,
    });

    factory OtpLoginModel.fromJson(Map<String, dynamic> json) => OtpLoginModel(
        mobile: json["mobile"],
    );

    Map<String, dynamic> toJson() => {
        "mobile": mobile,
        
    };
}
