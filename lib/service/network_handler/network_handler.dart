
import 'package:http/http.dart' as http;
//import 'package:snippet_coder_utils/FormHelper.dart';
//import 'package:flutter/material.dart';
//import 'package:transport/controller/home_controller.dart';
//import 'package:transport/screens/verification/otp.dart';
//import 'package:transport/screens/verification/otp.dart';

//import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class NetworkHandler{
  static final client = http.Client();
  //static final storage = FlutterSecureStorage();

  static void post(var body, String endpoint , header , function) async {
    //HomeController homeController =HomeController();
    //BuildContext? context ;
    var response = await client.post(
      buildUrl(endpoint),
      body: body,
      headers: header
      );
    print("${response.body}");
      if (response.statusCode == 200){
        print("sucess now function will be excuted");
        function;
     
      }
      else{
        print("not success");
      }

    }
  
  // host  http://43.204.189.94/api/v1
  // endpoint  /user/otp/create
  
  static Uri buildUrl(String endpoint){
    String host = "http://43.204.189.94/api/v1";
    final apiPath = host + endpoint;
    return Uri.parse(apiPath);
  }
/*
  static void storeToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  static Future<String?> getToken () async {

    return await storage.read(key: "token");
  }
*/


}


/*

if (response.statusCode == 200) {
      debugPrint('Response body: ${response.body()}');
      debugPrint("=======================================");
      debugPrint('Response status: ${response.statusCode}');

      var body = jsonDecode(response.body());

      debugPrint(body["message"]);
      debugPrint(body["data"]);
      ////////////////////////////////////
      var token = body["data"] as String;
      SharedPrefs.saveToken(token);

      FormHelper.showSimpleAlertDialog(
        context,
        Config.appName,
        "Login Successfully     Now Press Ok to continue",
        "Ok",
        () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => HomeControllerPage()));
        },
      );



*/