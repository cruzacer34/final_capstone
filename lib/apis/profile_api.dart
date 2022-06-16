import 'dart:convert';
import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:http/http.dart' as http;

class ProfileApi {
  static Future<Profile> fetchMyProfile() async {
    var myProfile;
    try {
      final url = Uri.parse(
          '$firebaseUrl/profiles/my_profile.json');
      final response = await http.get(url);
      final responseData = json.decode(response.body);
      myProfile = Profile.fromJson(responseData as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
    return myProfile;
  }

  static Future<Profile> fetchSupervisorProfile() async {
    var supervisorProfile;
    try {
      final url = Uri.parse(
          '$firebaseUrl/profiles/supervisor.json');
      final response = await http.get(url);
      final responseData = json.decode(response.body);
      supervisorProfile = Profile.fromJson(responseData as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
    return supervisorProfile;
  }

  static Future<List<Profile>> fetchAssociates() async {
    List<Profile> associateProfiles = [];
    try {
      final url = Uri.parse(
          '$firebaseUrl/profiles.json');
      final response = await http.get(url);
      final responseData = json.decode(response.body);
      responseData.forEach((key, value) {
        if(key != 'my_profile' && key != 'supervisor') {
          associateProfiles.add(Profile.fromJson(value as Map<String, dynamic>));
        }
      });
    } catch (e) {
      rethrow;
    }
    return associateProfiles;
  }

  static Future<List<Profile>> fetchAllProfiles() async {
    List<Profile> allProfiles = [];
    try {
      final url = Uri.parse(
          '$firebaseUrl/profiles.json');
      final response = await http.get(url);
      final responseData = json.decode(response.body);
      responseData.forEach((key, value) {
        allProfiles.add(Profile.fromJson(value as Map<String, dynamic>));
      });
    } catch (e) {
      rethrow;
    }
    return allProfiles;
  }
}
