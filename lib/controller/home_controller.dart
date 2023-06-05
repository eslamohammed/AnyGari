import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:transport/constants/api_endpoints.dart';
import '../models/district_model.dart';
import '../models/division_model.dart';
import '../models/vehilce_list_model.dart';

class HomeController extends GetxController {
  final seatController = TextEditingController();
  final carTypeController = TextEditingController();
  final seatsController = TextEditingController();
  final acController = TextEditingController();

  RxBool isVehileListLoading = false.obs;
  RxBool isDivisionLoading = false.obs;
  RxBool isDistrictLoading = false.obs;

  Rx<VehicleListModel> vehicleList = VehicleListModel().obs;
  Rx<DivisionListModel> divisionList = DivisionListModel().obs;
  Rx<DistrictListModel> districtList = DistrictListModel().obs;

  Future getVehilceList() async {
    VehicleListModel model = VehicleListModel();
    try {
      isVehileListLoading.value = true;
      http.Response response = await http.get(
        Uri.parse(ApiEndPoint.getVehicleList),
      );
      model = vehicleListModelFromJson(response.body);
      if (response.statusCode == 200) {
        isVehileListLoading.value = false;
        vehicleList.value = model;
      } else {
        isVehileListLoading.value = false;
      }
    } catch (e) {
      isVehileListLoading.value = false;
    }
  }

  Future getDivisionList() async {
    DivisionListModel model = DivisionListModel();
    try {
      isDivisionLoading.value = true;
      http.Response response = await http.get(
        Uri.parse(ApiEndPoint.getDivisionList),
      );
      model = divisionListModelFromJson(response.body);
      if (response.statusCode == 200) {
        isDivisionLoading.value = false;
        divisionList.value = model;
      } else {
        isDivisionLoading.value = false;
      }
    } catch (e) {
      isDivisionLoading.value = false;
    }
  }

  Future getDistrictList() async {
    DistrictListModel model = DistrictListModel();
    try {
      isDistrictLoading.value = true;
      http.Response response = await http.get(
        Uri.parse(ApiEndPoint.getDistrictList),
      );
      model = districtListModelFromJson(response.body);
      if (response.statusCode == 200) {
        isDistrictLoading.value = false;
        districtList.value = model;
      } else {
        isDistrictLoading.value = false;
      }
    } catch (e) {
      isDistrictLoading.value = false;
    }
  }
}
