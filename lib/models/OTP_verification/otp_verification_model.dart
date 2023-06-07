import 'dart:convert';

OtpVerificationModel otpVerificationModelFromJson(String str) => OtpVerificationModel.fromJson(json.decode(str));

String otpVerificationModelToJson(OtpVerificationModel data) => json.encode(data.toJson());

class OtpVerificationModel {
    int mobile;
    int otp;

    OtpVerificationModel({
        required this.mobile,
        required this.otp,
    });

    factory OtpVerificationModel.fromJson(Map<String, dynamic> json) => OtpVerificationModel(
        mobile: json["mobile"],
        otp: json["otp"],
    );

    Map<String, dynamic> toJson() => {
        "mobile": mobile,
        "otp": otp,
    };
}
