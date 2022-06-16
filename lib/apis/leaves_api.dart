import 'dart:convert';
import 'package:final_capstone/models/leave_request.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:http/http.dart' as http;

class LeavesApi {
  static Future<void> applyLeave(LeaveRequest leaveRequest) async {
    try {
      final url = Uri.parse(
          '$firebaseUrl/profiles/my_profile/leaves/leave_requests.json');
      await http.post(
        url,
        body: json.encode(leaveRequest),
      );
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<LeaveRequest>> fetchLeaveRequests() async {
    List<LeaveRequest> leaveRequests = [];
    try {
      final url = Uri.parse(
          '$firebaseUrl/profiles/my_profile/leaves/leave_requests.json');
      final response = await http.get(url);
      final responseData = json.decode(response.body);
      responseData.forEach((key, value) {
        leaveRequests.add(LeaveRequest.fromJson(value as Map<String, dynamic>));
      });
    } catch (e) {
      rethrow;
    }
    return leaveRequests;
  }
}
